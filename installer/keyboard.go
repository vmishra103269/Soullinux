package main

import (
    "log"
    "os/exec"
)

func main() {
    cmd := exec.Command("localectl set-keymap en")
    err := cmd.Run()
    if err != nil {
        log.Fatal(err)
    }
}
