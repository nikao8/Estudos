package routes

import (
	"net/http"
	ctl "produtos-web/controllers"
)

func CarregaRotas() {
	http.HandleFunc("/", ctl.Index)
	http.HandleFunc("/new", ctl.New)
	http.HandleFunc("/insert", ctl.Insert)
	http.HandleFunc("/delete", ctl.Delete)
}
