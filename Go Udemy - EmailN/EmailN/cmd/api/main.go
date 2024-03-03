package main

import (
	contract_campaign "EmailN/internal/contract/campaign"
	domain_campaign "EmailN/internal/domain/campaign"
	"net/http"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	"github.com/go-chi/render"
)

func main() {
	r := chi.NewRouter()
	r.Use(middleware.RequestID)
	r.Use(middleware.RealIP)
	r.Use(middleware.Logger)
	r.Use(middleware.Recoverer)

	service := domain_campaign.Service{}

	r.Get("/teste", func(w http.ResponseWriter, r *http.Request) {

		render.Status(r, http.StatusOK)
		render.JSON(w, r, map[string]string{
			"message": "success teste get",
		})
	})

	r.Post("/campaigns", func(w http.ResponseWriter, r *http.Request) {
		var payload contract_campaign.InputCreateDto

		err := render.DecodeJSON(r.Body, &payload)

		if err != nil {
			render.Status(r, http.StatusBadRequest)
			render.JSON(w, r, map[string]string{
				"status":  "error",
				"message": "Erro ao realizar o decode" + err.Error(),
			})
			return
		}

		id, err := service.Create(payload)

		if err != nil {
			render.Status(r, http.StatusBadRequest)
			render.JSON(w, r, map[string]string{
				"status":  "error",
				"message": err.Error(),
			})
			return
		}

		render.Status(r, http.StatusCreated)
		render.JSON(w, r, map[string]string{
			"status": "success",
			"id":     id,
		})
	})

	println("Servidor escutando requisições na porta 3000")
	http.ListenAndServe(":3000", r)
}
