package main

import (
	"api-rest-gin/controllers"
	"api-rest-gin/database"
	"api-rest-gin/models"
	"bytes"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"net/http/httptest"
	"strconv"
	"testing"

	"github.com/gin-gonic/gin"
	"github.com/stretchr/testify/assert"
)

var ID int

func SetupRotasTeste() *gin.Engine {
	gin.SetMode(gin.ReleaseMode) // melhora a visualização dos resultados de testes
	rotas := gin.Default()

	return rotas
}

func CriaAlunoMock() {
	aluno := models.Aluno{Nome: "Aluno Teste", CPF: "11122233344", RG: "123456789"}
	db := database.ConectaPostgres()
	db.Create(&aluno)
	ID = int(aluno.ID)
}

func DeletaAlunoMock() {
	var aluno models.Aluno
	db := database.ConectaPostgres()
	db.Delete(&aluno, ID)
}
func TestVerificaStatusCodeEndpointSaudacaoComParametro(t *testing.T) {
	r := SetupRotasTeste()
	r.GET("/:nome", controllers.Saudacao)
	req, _ := http.NewRequest("GET", "/nicolas", nil)
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)

	/* SUBISTITUIR PELO ASSERT
	if resposta.Code != http.StatusOK {
		t.Fatalf("Status error: valor recebido foi %d e o esperado era %d", resposta.Code, http.StatusOK)
	}*/

	//		Variavel teste, Valor esperado, Valor recebido, Mensagem opcional
	assert.Equal(t, http.StatusOK, resposta.Code, "Deveria ter recebido StatusCode 200!")
	mockDaResposta := `{"API diz:":"Olá nicolas !"}`
	respostaBody, _ := io.ReadAll(resposta.Body)
	assert.Equal(t, mockDaResposta, string(respostaBody))
	fmt.Println("Resposta body:", string(respostaBody))
	fmt.Println("Mock da resposta:", mockDaResposta)
}

func TestListaTodosAlunos(t *testing.T) {
	//db := database.ConectaPostgres()
	CriaAlunoMock()
	defer DeletaAlunoMock()

	r := SetupRotasTeste()

	r.GET("/alunos", controllers.ExibeTodosAlunos)

	req, _ := http.NewRequest("GET", "/alunos", nil)
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)
	assert.Equal(t, http.StatusOK, resposta.Code)

}

func TestBuscaPorCPF(t *testing.T) {
	CriaAlunoMock()
	defer DeletaAlunoMock()

	r := SetupRotasTeste()
	r.GET("/alunos/cpf/:cpf", controllers.BuscaAlunoCPF)

	req, _ := http.NewRequest("GET", "/alunos/cpf/11122233344", nil)
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)
	assert.Equal(t, http.StatusOK, resposta.Code)
}

func TestBuscaPorID(t *testing.T) {
	CriaAlunoMock()
	defer DeletaAlunoMock()

	r := SetupRotasTeste()
	r.GET("/alunos/:id", controllers.BuscaAlunoId)

	pathBusca := "/alunos/" + strconv.Itoa(ID)

	req, _ := http.NewRequest("GET", pathBusca, nil)
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)

	var alunoMock models.Aluno
	json.Unmarshal(resposta.Body.Bytes(), &alunoMock)

	// validando: objeto aluno por completo e por fim, o status code.
	assert.Equal(t, "Aluno Teste", alunoMock.Nome, "Nome deve ser igual!")
	assert.Equal(t, "11122233344", alunoMock.CPF, "CPF deve ser igual!")
	assert.Equal(t, "123456789", alunoMock.RG, "RG deve ser igual!")
	assert.Equal(t, http.StatusOK, resposta.Code, "StatusCode da requisição deve ser 200!")
}

func TestDeletaAluno(t *testing.T) {
	CriaAlunoMock()

	r := SetupRotasTeste()
	r.DELETE("/alunos/:id", controllers.DeletaAluno)

	pathBusca := "/alunos/" + strconv.Itoa(ID)

	req, _ := http.NewRequest("DELETE", pathBusca, nil)
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)

	assert.Equal(t, http.StatusOK, resposta.Code, "StatusCode da requisição deve ser 200!")
}

func TestEditaAluno(t *testing.T) {
	CriaAlunoMock()
	defer DeletaAlunoMock()

	r := SetupRotasTeste()
	r.PATCH("/alunos/:id", controllers.EditaAluno)

	aluno := models.Aluno{Nome: "Aluno Teste Editado", CPF: "00000000000", RG: "123456789"}
	valorJson, _ := json.Marshal(aluno)

	pathEdit := "/alunos/" + strconv.Itoa(ID)
	req, _ := http.NewRequest("PATCH", pathEdit, bytes.NewBuffer(valorJson))
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)

	var alunoMockEditado models.Aluno

	json.Unmarshal(resposta.Body.Bytes(), &alunoMockEditado)
	assert.Equal(t, "Aluno Teste Editado", alunoMockEditado.Nome, "Nome deve ser igual!")
	assert.Equal(t, "123456789", alunoMockEditado.RG, "RG deve ser igual!")
	assert.Equal(t, "00000000000", alunoMockEditado.CPF, "CPF deve ser igual!")
	assert.Equal(t, http.StatusOK, resposta.Code, "StatusCode da requisição deve ser 200!")
}
