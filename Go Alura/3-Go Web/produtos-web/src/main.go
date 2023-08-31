package main

import (
	"net/http"
	"produtos-web/routes"
)

func main() {
	routes.CarregaRotas()

	http.ListenAndServe(":8000", nil)

}
