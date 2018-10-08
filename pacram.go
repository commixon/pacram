package main

import (
	"fmt"
)

const pacramLogo = `
 / o\      /o o\
|   <      |   |
 \__/      |,,,|

`

func main() {
	fmt.Println(pacramLogo)
	for {
		go EatMem()
	}
}

// EatMem eats memory very quickly
func EatMem() {
	num := 1
	for {
		num++
	}
}
