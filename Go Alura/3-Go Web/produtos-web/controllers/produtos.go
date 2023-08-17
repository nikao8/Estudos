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

		models.CriarNovoProduto(nome, descricao, preco, quantidade)
	}
	http.Redirect(w, r, "/", 301)
}
