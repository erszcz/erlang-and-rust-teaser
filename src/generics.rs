enum Option<T> {
    Some(T),
    None
}

fn main() {
    let x = Some(5i);
    let y : Option<int> = None;

    match x {
        Some(n) => println!("x is {:d}", n),
        None    => println!("x is missing!")
    }

    match y {
        Some(n) => println!("y is {:d}", n),
        _       => println!("y is missing!")
    }
}
