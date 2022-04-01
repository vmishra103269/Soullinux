use std::io::Command;

fn main() {
    let the_output = Command::new("ps").arg("aux").output()
        .ok().expect("Failed to execute.");
    let encoded = String::from_utf8_lossy(the_output.output.as_slice());
    print!("{}", encoded);
}
