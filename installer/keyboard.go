/*
|#######################################|
|## Soullinux Keyboard-locale Manager ##|
|## (C) Copyright Venkatesh Mishra    ##|
|## Under the GNU GPL v3 License      ##|
|## date: 01/04/2022                  ##|
########################################|*/

package main

import (
    "log"
    "os/exec"
    "fmt"
)

func main() {
    var lang string
    fmt.Println("Enter your keyboard language")
    fmt.Scan(&lang)
    if(lang == "en") {
        cmd := exec.Command("localectl set-keymap en")
        err := cmd.Run()
        if err != nil {
            log.Fatal(err)
        }
    } else {
        if err != nil {
            fmt.Println(err)
        }
    }
}
