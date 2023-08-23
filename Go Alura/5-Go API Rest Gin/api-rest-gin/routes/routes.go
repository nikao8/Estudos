package routes

import (
	"api-rest-gin/controllers"

	"github.com/gin-gonic/gin"
)

func HandleRequests() {
	r := gin.Default()

	r.GET("/alunos", controllers.ExibeTodosAlunos)
	r.GET("/:nome", controllers.Saudacao)
	r.POST("/alunos", controllers.CriaAluno)
	r.GET("/alunos/:id", controllers.BuscaAlunoId)

	r.Run(":8000") // especificando a porta do server, caso contrario, o padrão é :8080
}
