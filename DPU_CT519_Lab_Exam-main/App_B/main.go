



package main

import (
	"log"
	"net/http"
)

func main() {
	fs := http.FileServer(http.Dir("./html"))
	http.Handle("/", fs)

	log.Print("Listening on :9919...")
	err := http.ListenAndServe(":9919", nil)
	if err != nil {
		log.Fatal(err)
	}
}
