package database

import (
	"log"

	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

func ConectaPostgres() *gorm.DB {

	//strConn := "host=localhost user=root password=root dbname=root port=5432 sslmode=disable"
	strConn := "postgres://root:root@localhost:5432/root"
	DB, err := gorm.Open(postgres.Open(strConn))

	if err != nil {
		log.Panic("Erro ao conectar com o banco de dados ::", err.Error())
	}

	return DB
}
