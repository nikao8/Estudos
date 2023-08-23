package main

import (
	"api-rest/models"
	"api-rest/routes"
	"fmt"
)

func main() {

	fmt.Println("Iniciando o servidor...")
	routes.HandleRequest()

}
