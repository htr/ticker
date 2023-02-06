package main

import (
	"fmt"
	"time"
    "os"
)

func main() {
    i := 1
    for range time.Tick(time.Second) {
        fmt.Println("out tick",i)
        fmt.Fprintln(os.Stderr,"err tick",i)
        i++
    }
}
