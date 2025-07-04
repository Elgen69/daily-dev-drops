// goroutine_race.go
package main

import (
	"fmt"
	"sync"
	"time"
)

var counter = 0

// This will spawn N goroutines incrementing a shared counter without synchronization
func main() {
	var wg sync.WaitGroup
	const N = 1000

	for i := 0; i < N; i++ {
		wg.Add(1)
		go func(id int) {
			defer wg.Done()

			// Simulate real-world latency
			time.Sleep(time.Microsecond)

			// Race condition: counter is read and written by many goroutines simultaneously
			counter++
		}(i)
	}

	wg.Wait()
	fmt.Printf("Expected counter = %d, Actual counter = %d\n", N, counter)
}
