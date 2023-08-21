package controllers

import (
	"api-rest/database"
	"api-rest/models"
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"strconv"

	"github.com/gorilla/mux"
)

func Home(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Home Page")
}

func TodasPersonalidades(w http.ResponseWriter, r *http.Request) {

	var pers []models.Personalidade

	db := database.ConectaPostgres()

	db.Find(&pers)

	json.NewEncoder(w).Encode(pers)
}

func RetornaPersonalidade(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)

	id, err := strconv.Atoi(vars["id"])

	if err != nil {
		log.Fatal(err.Error())
	}

	var p models.Personalidade

	db := database.ConectaPostgres()
	db.First(&p, id)
	json.NewEncoder(w).Encode(p)
}

func CriaPersonalidade(w http.ResponseWriter, r *http.Request) {
	var per models.Personalidade

	json.NewDecoder(r.Body).Decode(&per)

	db := database.ConectaPostgres()

	db.Create(&per)

	json.NewEncoder(w).Encode(per)
}
