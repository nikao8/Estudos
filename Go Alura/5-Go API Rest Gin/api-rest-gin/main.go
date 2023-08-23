package main

import (
	"api-rest-gin/database"
	"api-rest-gin/routes"
	"fmt"
)

func main() {
	db := database.ConectaPostgres()

	fmt.Println(db)
	routes.HandleRequests()
}
