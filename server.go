// server.go - Basic HTTP server

package main

import (
    "fmt"
    "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello from Go server!")
}

func main() {
    http.HandleFunc("/", hello)
    fmt.Println("Server running at http://localhost:8080/")
    http.ListenAndServe(":8080", nil)
}
