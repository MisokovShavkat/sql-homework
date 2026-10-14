package main

import (
	"database/sql"
	"fmt"
	"log"
	"time"

	_ "github.com/lib/pq"
)

func main() {
	connStr := "host=localhost port=5432 user=postgres password=postgres dbname=coursedb sslmode=disable"

	db, err := sql.Open("postgres", connStr)
	if err != nil {
		log.Fatal("Failed to create pool:", err)
	}
	defer db.Close()

	db.SetMaxOpenConns(20)
	db.SetMaxIdleConns(4)
	db.SetConnMaxLifetime(5 * time.Minute)

	fmt.Println("До Ping:    ", db.Stats().OpenConnections, "соединений")

	if err := db.Ping(); err != nil {
		log.Fatal("Failed to connect:", err)
	}

	stats := db.Stats()
	fmt.Println("После Ping:  ", stats.OpenConnections, "соединений")
	fmt.Println("Из них занято:", stats.InUse)
	fmt.Println("Простаивает:  ", stats.Idle)
	fmt.Println("Максимум:     ", stats.MaxOpenConnections)
}
