package models

import (
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

	sql := "select * from produtos;"

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

		p.Nome = nome
		p.Descricao = descricao
		p.Preco = preco
		p.Quantidade = quantidade

		produtos = append(produtos, p)
	}

	return produtos
}
