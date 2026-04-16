// main.go
package main

/*
#cgo LDFLAGS: -L../../zig-out/lib -lzciil -static
#include "../../include/zciil.h"
*/
import "C"
import "fmt"

func main() {
	fmt.Println("starting program")
	defer fmt.Println("done")

	fmt.Println(C.GoString(C.testing()))
}
