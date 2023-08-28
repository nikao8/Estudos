package routes

import (
	"api-rest-gin/controllers"

	"github.com/gin-gonic/gin"
)

func HandleRequests() {
	r := gin.Default()
	r.LoadHTMLGlob("templates/*")
	r.Static("/assets", "./assets") // arquivos css

	r.GET("/alunos", controllers.ExibeTodosAlunos)
	r.GET("/:nome", controllers.Saudacao)
	r.POST("/alunos", controllers.CriaAluno)
	r.GET("/alunos/:id", controllers.BuscaAlunoId)
	r.DELETE("/alunos/:id", controllers.DeletaAluno)
	r.PATCH("/alunos/:id", controllers.EditaAluno)
	r.GET("/alunos/cpf/:cpf", controllers.BuscaAlunoCPF)
	r.GET("/index", controllers.ExibePaginaIndex)
	r.NoRoute(controllers.ExibePagina404) // NoRoute utilizado para paginas não encontradas, ou seja rotas que não existem

	r.Run(":8000") // especificando a porta do server, caso contrario, o padrão é :8080
}
