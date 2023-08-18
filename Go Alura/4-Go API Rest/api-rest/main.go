package main

import (
	"api-rest/models"
	"api-rest/routes"
	"fmt"
)

func main() {

	models.Personalidades = []models.Personalidade{
		{Nome: "Nome 1", Historia: "Historia 1"},
		{Nome: "Nome 2", Historia: "Historia 2"},
	}

	fmt.Println("Iniciando o servidor...")
	routes.HandleRequest()
}
