package models

import (
	"log"
	"produtos-web/database"
)

type Produto struct {
	Id              int
	Nome, Descricao string
	Preco           float64
	Quantidade      int
}

func BuscaTodosProdutos() []Produto {
	db := database.ConectaPg()
	defer db.Close()

	sql := "select * from produtos order by id asc;"

	resultConsulta, err := db.Query(sql)

	if err != nil {
		panic(err.Error())
	}

	p := Produto{}
	produtos := []Produto{}

	for resultConsulta.Next() {
		var id, quantidade int
		var nome, descricao string
		var preco float64

		err = resultConsulta.Scan(&id, &nome, &descricao, &preco, &quantidade)

		if err != nil {
			panic(err.Error())
		}

		p.Id = id
		p.Nome = nome
		p.Descricao = descricao
		p.Preco = preco
		p.Quantidade = quantidade

		produtos = append(produtos, p)
	}

	return produtos
}

func CriarNovoProduto(p Produto) {

	db := database.ConectaPg()
	defer db.Close()

	sql := `INSERT INTO public.produtos
	(nome, descricao, preco, quantidade)
	VALUES($1, $2, $3, $4);`

	insert, err := db.Prepare(sql)

	if err != nil {
		log.Fatal(err.Error())
	}

	insert.Exec(p.Nome, p.Descricao, p.Preco, p.Quantidade)
}

func DeleteProduto(id int) {
	db := database.ConectaPg()
	defer db.Close()

	sql := "delete from public.produtos where id=$1"

	delete, err := db.Prepare(sql)

	if err != nil {
		log.Fatal(err.Error())
	}

	delete.Exec(id)
}

func BuscaProduto(id int) Produto {
	db := database.ConectaPg()
	defer db.Close()

	produtoBanco, err := db.Query("select * from public.produtos where id=$1", id)

	if err != nil {
		log.Fatal(err.Error())
	}

	produtoBanco.Next()

	var quantidade int
	var nome, descricao string
	var preco float64

	err = produtoBanco.Scan(&id, &nome, &descricao, &preco, &quantidade)

	if err != nil {
		log.Fatal(err.Error())
	}

	return Produto{id, nome, descricao, preco, quantidade}

}

func AtualizaProduto(p Produto) {
	db := database.ConectaPg()
	defer db.Close()

	sql := `UPDATE public.produtos
	SET nome=$1, descricao=$2, preco=$3, quantidade=$4
	WHERE id=$5;`

	update, err := db.Prepare(sql)

	if err != nil {
		log.Fatal(err.Error())
	}

	update.Exec(p.Nome, p.Descricao, p.Preco, p.Quantidade, p.Id)
}
