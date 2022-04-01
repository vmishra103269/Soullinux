/*
|#######################################|
|## Soullinux Keyboard config         ##|
|## (C) Copyright Venkatesh Mishra    ##|
|## Under the GNU GPL v3 License      ##|
|## date: 31/03/2022                  ##|
########################################|
*/

use std::io::Command;

fn main() {
    let the_output = Command::new("localectl").arg("set-keymap en").output()
        .ok().expect("Failed to execute.");
    let encoded = String::from_utf8_lossy(the_output.output.as_slice());
    print!("{}", encoded);
}
