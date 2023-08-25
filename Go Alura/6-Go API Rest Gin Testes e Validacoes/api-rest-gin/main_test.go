package main

import (
	"api-rest-gin/controllers"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/gin-gonic/gin"
)

func SetupRotasTeste() *gin.Engine {
	rotas := gin.Default()

	return rotas
}

func TestVerificaStatusCodeEndpointSaudacaoComParametro(t *testing.T) {
	r := SetupRotasTeste()
	r.GET("/:nome", controllers.Saudacao)
	req, _ := http.NewRequest("GET", "/nicolas", nil)
	resposta := httptest.NewRecorder()
	r.ServeHTTP(resposta, req)

	if resposta.Code != http.StatusOK {
		t.Fatalf("Status error: valor recebido foi %d e o esperado era %d", resposta.Code, http.StatusOK)
	}
}
