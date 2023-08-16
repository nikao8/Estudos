package controllers

import (
	"net/http"
	"produtos-web/models"
	"text/template"
)

var tmps = template.Must(template.ParseGlob("templates/*.html"))

func Index(w http.ResponseWriter, r *http.Request) {
	produtos := models.BuscaTodosProdutos()
	tmps.ExecuteTemplate(w, "index", produtos)
}
