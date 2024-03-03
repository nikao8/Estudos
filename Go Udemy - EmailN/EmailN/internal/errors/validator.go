package internal_errors

import (
	"fmt"

	"github.com/go-playground/validator/v10"
)

func ValidateStruct(obj interface{}) error {
	validate := validator.New()
	err := validate.Struct(obj)

	if err == nil {
		return nil
	}

	validationErrors := err.(validator.ValidationErrors)
	validationError := validationErrors[0]

	switch validationError.Tag() {
	case "required":
		return fmt.Errorf(fmt.Sprintf("O campo %s é obrigatório", validationError.Field()))
	case "max":
		return fmt.Errorf(fmt.Sprintf("O valor do campo %s ultrapassa o limite máximo de %s", validationError.Field(), validationError.Param()))
	case "min":
		return fmt.Errorf(fmt.Sprintf("O valor do campo %s não atingiu o mínimo de %s", validationError.Field(), validationError.Param()))
	case "email":
		return fmt.Errorf(fmt.Sprintf("O valor %s não é um email válido", validationError.Param()))
	default:
		return fmt.Errorf(fmt.Sprintf("Houve um erro não tratado no valor %s no campo %s", validationError.Param(), validationError.Field()))
	}
}
