enum OptionalInt {
    Value(int),
    Missing,
}

enum OptionalFloat64 {
    Valuef64(f64),
    Missingf64
}

fn main() {
    let x = Value(5);
    let xf64 = Valuef64(5.0f64);

    match x {
        Value(n) => println!("x is {:d}", n),
        Missing  => println!("x is missing!"),
    }

    match xf64 {
        Valuef64(n) => println!("y is {:.1f}", n),
        Missingf64  => println!("y is missing!"),
    }
}
