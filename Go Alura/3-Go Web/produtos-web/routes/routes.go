package routes

import (
	"net/http"
	ctl "produtos-web/controllers"
)

func CarregaRotas() {
	http.HandleFunc("/", ctl.Index)
}
