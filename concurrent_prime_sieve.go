// concurrent_prime_sieve.go
package main

import "fmt"

// Generates integers starting from 2 and sends them to the channel
func generate(ch chan int) {
	for i := 2; ; i++ {
		ch <- i
	}
}

// Filters values from in that are multiples of prime, sends to out
func filter(in, out chan int, prime int) {
	for {
		i := <-in
		if i%prime != 0 {
			out <- i
		}
	}
}

func main() {
	const n = 30 // Find primes up to this many

	ch := make(chan int) // Create a new channel
	go generate(ch)      // Start generating numbers

	for i := 0; i < n; i++ {
		prime := <-ch
		fmt.Println(prime)
		ch1 := make(chan int)
		go filter(ch, ch1, prime)
		ch = ch1
	}
}
