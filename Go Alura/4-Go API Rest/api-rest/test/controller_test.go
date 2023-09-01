package test

import (
	"api-rest/controllers"
	"api-rest/database"
	"api-rest/models"
	"bytes"
	"encoding/json"
	"fmt"
	"net/http"
	"net/http/httptest"
	"strconv"
	"testing"

	"github.com/gorilla/mux"
	"github.com/stretchr/testify/assert"
)

var ID int

func SetupRotasTeste() *mux.Router {
	rotas := mux.NewRouter()

	return rotas
}

func CriaPersonalidadeMock() {
	person := models.Personalidade{Nome: "Teste nome", Historia: "Teste da historia!"}
	db := database.ConectaPostgres()
	db.Create(&person)
	ID = person.Id
}

func DeletaPersonalidadeMock() {
	var person models.Personalidade
	db := database.ConectaPostgres()
	db.Delete(&person, ID)
}

func TestTodasPersonalidades(t *testing.T) {
	CriaPersonalidadeMock()
	defer DeletaPersonalidadeMock()

	r := SetupRotasTeste()
	r.HandleFunc("/api/personalidades", controllers.TodasPersonalidades).Methods("Get")

	req, _ := http.NewRequest("GET", "/api/personalidades", nil)
	resposta := httptest.NewRecorder()

	r.ServeHTTP(resposta, req)
	assert.Equal(t, http.StatusOK, resposta.Code)
}

func TestRetornaPersonalidade(t *testing.T) {
	CriaPersonalidadeMock()
	defer DeletaPersonalidadeMock()

	r := SetupRotasTeste()
	r.HandleFunc("/api/personalidades/{id}", controllers.RetornaPersonalidade).Methods("Get")

	pathBusca := "/api/personalidades/" + strconv.Itoa(ID)
	//pathBusca := "/api/personalidades/500" // força erro statuscode 404

	req, _ := http.NewRequest("GET", pathBusca, nil)
	resposta := httptest.NewRecorder()

	r.ServeHTTP(resposta, req)

	var personalidadeMock models.Personalidade
	//json.Unmarshal(resposta.Body.Bytes(), &personalidadeMock)
	json.NewDecoder(resposta.Body).Decode(&personalidadeMock)
	fmt.Println("personalidade:", personalidadeMock)

	assert.Equal(t, http.StatusOK, resposta.Code)
	assert.NotEmpty(t, personalidadeMock.Nome, "Nome vazio!")
	assert.NotEmpty(t, personalidadeMock.Historia, "Historia vazia!")
}

func TestDeletaPersonalidade(t *testing.T) {
	CriaPersonalidadeMock()

	r := SetupRotasTeste()
	r.HandleFunc("/api/personalidades/{id}", controllers.DeletaPersonalidade).Methods("Delete")

	pathDelete := "/api/personalidades/" + strconv.Itoa(ID)
	req, _ := http.NewRequest("DELETE", pathDelete, nil)
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)

	resEqual := assert.Equal(t, http.StatusOK, resposta.Code)

	if !resEqual {
		DeletaPersonalidadeMock()
	}
}

func TestEditaPersonalidade(t *testing.T) {
	CriaPersonalidadeMock()
	defer DeletaPersonalidadeMock()

	r := SetupRotasTeste()
	r.HandleFunc("/api/personalidades/{id}", controllers.EditaPersonalidade).Methods("Put")

	personalidade := models.Personalidade{Nome: "Novo nome", Historia: "Nova Historia"}
	personalidadeJson, _ := json.Marshal(personalidade)

	pathEdit := "/api/personalidades/" + strconv.Itoa(ID)
	req, _ := http.NewRequest("PUT", pathEdit, bytes.NewBuffer(personalidadeJson))
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)

	var personalidadeEditada models.Personalidade
	json.Unmarshal(resposta.Body.Bytes(), &personalidadeEditada)

	assert.Equal(t, http.StatusOK, resposta.Code)
	assert.Equal(t, "Novo nome", personalidadeEditada.Nome, "Nome deve ser igual!")
	assert.Equal(t, "Nova Historia", personalidadeEditada.Historia, "Historia deve ser igual!")
	assert.NotEmpty(t, personalidadeEditada.Nome, "Nome vazio!")
	assert.NotEmpty(t, personalidadeEditada.Historia, "Historia vazia!")
}
