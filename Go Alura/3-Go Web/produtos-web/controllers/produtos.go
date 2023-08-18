package controllers

import (
	"log"
	"net/http"
	"produtos-web/models"
	"strconv"
	"text/template"
)

var tmps = template.Must(template.ParseGlob("templates/*.html"))

func Index(w http.ResponseWriter, r *http.Request) {
	produtos := models.BuscaTodosProdutos()
	tmps.ExecuteTemplate(w, "index", produtos)
}

func New(w http.ResponseWriter, r *http.Request) {
	tmps.ExecuteTemplate(w, "new", nil)
}

func Insert(w http.ResponseWriter, r *http.Request) {
	if r.Method == "POST" {
		nome := r.FormValue("nome")
		descricao := r.FormValue("descricao")
		preco, err := strconv.ParseFloat(r.FormValue("preco"), 64)

		if err != nil {
			log.Println("Erro na conversão de preço:", err)
		}

		quantidade, err := strconv.Atoi(r.FormValue("quantidade"))

		if err != nil {
			log.Println("Erro na conversão de quantidade:", err)
		}

		p := models.Produto{Nome: nome, Descricao: descricao, Preco: preco, Quantidade: quantidade}
		models.CriarNovoProduto(p)
	}
	http.Redirect(w, r, "/", 301)
}

func Delete(w http.ResponseWriter, r *http.Request) {
	idProd, err := strconv.Atoi(r.URL.Query().Get("id"))

	if err != nil {
		log.Println("Erro na conversão de id:", err)
	}

	models.DeleteProduto(idProd)

	http.Redirect(w, r, "/", 301)
}

func Edit(w http.ResponseWriter, r *http.Request) {
	idDoProduto, err := strconv.Atoi(r.URL.Query().Get("id"))

	if err != nil {
		log.Println("Erro na conversão de id:", err)
	}

	produto := models.BuscaProduto(idDoProduto)

	tmps.ExecuteTemplate(w, "Edit", produto)
}

func Update(w http.ResponseWriter, r *http.Request) {
	if r.Method == "POST" {
		id, err := strconv.Atoi(r.FormValue("id"))
		nome := r.FormValue("nome")
		descricao := r.FormValue("descricao")
		preco, err := strconv.ParseFloat(r.FormValue("preco"), 64)
		quantidade, err := strconv.Atoi(r.FormValue("quantidade"))

		if err != nil {
			log.Println("Erro na conversão de dados:", err)
		}

		prod := models.Produto{Id: id, Nome: nome, Descricao: descricao, Preco: preco, Quantidade: quantidade}
		models.AtualizaProduto(prod)
	}

	http.Redirect(w, r, "/", 301)
}
