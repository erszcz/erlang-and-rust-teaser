    struct Circle { x: f64, y: f64, radius: f64 }
    struct Square { a: f64 }

    trait HasArea {
        fn area(&self) -> f64;
    }

    impl HasArea for Circle {
        fn area(&self) -> f64 {
            std::f64::consts::PI * (self.radius * self.radius)
        }
    }

    impl HasArea for Square {
        fn area(&self) -> f64 { self.a * self.a }
    }

    // Won't compile!
    // fn area<S>(shape: &S) -> f64 { shape.area() }

    fn area<S: HasArea>(shape: &S) -> f64 { shape.area() }

    fn main() {
        let c = Circle{ x: 2.0, y: 2.0, radius: 4.0 };
        let s = Square{ a: 2.0 };
        println!("circle area: {:f}", area(&c));
        println!("square area: {:f}", area(&s));
    }
