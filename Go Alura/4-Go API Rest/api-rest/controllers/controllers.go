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

	p := RetornaPersonalidadeId(id)
	json.NewEncoder(w).Encode(p)
}

func CriaPersonalidade(w http.ResponseWriter, r *http.Request) {
	var per models.Personalidade

	json.NewDecoder(r.Body).Decode(&per)

	db := database.ConectaPostgres()

	db.Create(&per)

	json.NewEncoder(w).Encode(per)
}

func DeletaPersonalidade(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)

	id, err := strconv.Atoi(vars["id"])

	if err != nil {
		log.Fatal(err.Error())
	}

	p := RetornaPersonalidadeId(id)

	db := database.ConectaPostgres()

	db.Delete(&p, id)

	// exibe a personalidade deletada:
	json.NewEncoder(w).Encode(p)
}

func EditaPersonalidade(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	id, err := strconv.Atoi(vars["id"])

	if err != nil {
		log.Fatal(err.Error())
	}

	p := RetornaPersonalidadeId(id)

	json.NewDecoder(r.Body).Decode(&p)

	db := database.ConectaPostgres()
	db.Save(&p)

	json.NewEncoder(w).Encode(p)
}

func RetornaPersonalidadeId(id int) models.Personalidade {
	var personalidade models.Personalidade
	db := database.ConectaPostgres()

	db.First(&personalidade, id)

	return personalidade
}
