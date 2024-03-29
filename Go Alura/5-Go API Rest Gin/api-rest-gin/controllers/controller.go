package controllers

import (
	"api-rest-gin/database"
	"api-rest-gin/models"
	"net/http"

	"github.com/gin-gonic/gin"
)

func ExibeTodosAlunos(c *gin.Context) {
	var alunos []models.Aluno

	db := database.ConectaPostgres()
	db.Find(&alunos)

	c.JSON(200, alunos)
}

func Saudacao(c *gin.Context) {
	nome := c.Params.ByName("nome")

	c.JSON(200, gin.H{
		"API diz:": "Olá " + nome + " !",
	})
}

func CriaAluno(c *gin.Context) {
	var aluno models.Aluno

	err := c.ShouldBindJSON(&aluno)

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": err.Error(),
		})
		return
	}

	db := database.ConectaPostgres()

	db.Create(&aluno)
	c.JSON(http.StatusOK, aluno)
}

func BuscaAlunoId(c *gin.Context) {
	var aluno models.Aluno

	id := c.Params.ByName("id")

	db := database.ConectaPostgres()

	db.First(&aluno, id)

	if aluno.ID == 0 {
		c.JSON(http.StatusNotFound, gin.H{
			"error": "Aluno não encontrado na base de dados.",
		})
		return
	}

	c.JSON(http.StatusOK, aluno)
}

func DeletaAluno(c *gin.Context) {
	var aluno models.Aluno

	id := c.Params.ByName("id")

	db := database.ConectaPostgres()
	db.Delete(&aluno, id)

	c.JSON(http.StatusOK, gin.H{
		"data": "Aluno deletado com sucesso!",
	})
}

func EditaAluno(c *gin.Context) {
	var aluno models.Aluno
	db := database.ConectaPostgres()

	id := c.Params.ByName("id")
	db.First(&aluno, id)

	err := c.ShouldBindJSON(&aluno)

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": err.Error(),
		})
		return
	}

	db.Model(&aluno).UpdateColumns(aluno)
	c.JSON(http.StatusOK, aluno)
}

func BuscaAlunoCPF(c *gin.Context) {
	var aluno models.Aluno
	cpf := c.Params.ByName("cpf")

	db := database.ConectaPostgres()
	db.Where(&models.Aluno{CPF: cpf}).First(&aluno)

	if aluno.ID == 0 {
		c.JSON(http.StatusNotFound, gin.H{
			"error": "Aluno não encontrado na base de dados.",
		})
		return
	}

	c.JSON(http.StatusOK, aluno)
}
