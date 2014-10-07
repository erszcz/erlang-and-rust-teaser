# Who am I?

- Radek Szymczyszyn
- MongooseIM/ejabberd/XMPP engineer from Erlang Solutions in Kraków


# Intro

I won't introduce you to the language, because I simply can't in 15 minutes.
Besides, there's a great guide on rust-lang.org which will do it better than I.

Instead, I'll show you one aspect of what Rust might be good for and why.
What is it? The stuff we write in C now - system-level software and shared libraries.
Why? Because it allows you to touch the metal if you have to,
but otherwise strives to be as safe as possible.


# Rust features

- algebraic data types (Erlang tagged types might work as substitutes)
- pattern matching
- closures
- type inference (Erlang is dynamically typed -- no need for inference)
- zero-cost abstractions (C++ anyone? iterators are just pointers,
  destructors instead of garbage collection)
- guaranteed memory safety (linear types)
- concurrency without data races (tasks powered by OS threads **or**
  lightweight processes)
- minimal runtime (just like C)
- efficient C bindings


# Algebraic data types & pattern matching

```rust
enum OptionalInt {
    Value(int),
    Missing,
}

fn main() {
    let x = Value(5);
    let y = Missing;

    match x {
        Value(n) => println!("x is {:d}", n),
        Missing  => println!("x is missing!"),
    }

    match y {
        Value(n) => println!("y is {:d}", n),
        _        => println!("y is missing!"),
    }
}
```


# No generics (think: Google Go)

```rust
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
        Valuef64(n) => println!("xf64 is {:.1f}", n),
        Missingf64  => println!("xf64 is missing!"),
    }
}
```


# Generics

```rust
enum Option<T> {
    Some(T),
    None
}

fn main() {
    // When dealing with generics we need to give
    // the compiler some hints about types in use.
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
```


# Traits

```rust
struct Circle { x: f64, y: f64, radius: f64 }
struct Square { a: f64 }
struct Line { a: f64, b: f64 }

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

fn slope(l: &Line) -> f64 { l.a }

fn area<S: HasArea>(shape: &S) -> f64 {
    shape.area()
}

fn main() {
    let c = Circle{ x: 2.0, y: 2.0, radius: 4.0 };
    let s = Square{ a: 2.0 };
    let l = Line{ a: 1.3, b: 2.0 };
    println!("circle area: {:f}", area(&c));
    println!("square area: {:f}", area(&s));
    // Won't compile!
    // error: failed to find an implementation of trait HasArea for Line
    //println!("line area: {:.2f}", area(&l));
}
```


# Type inference

## Static typing?

```java
public static void main(String[] args)
```


## Static typing with type inference

```rust
fn main()
```


# Reckless C++[^reckless-cxx]

What's wrong with this code?

```c
// Return a vector of tokens found in the given string.
// Each token is a (token_begin, token_end) pair.
vector<pair<const char *,const char *>>
tokenize_string(const string &text);

int main()
{
    vector<pair<const char *, const char *>> v;
    {
        string s = "ala ma kota, a kot ma ale";
        v = tokenize_string(s);
    }
    for (auto i = begin(v); i < end(v); i++) {
        cout << string(i->first, i->second - i->first) << "\n";
    }
    return 0;
}
```

[^reckless-cxx]: Inspired by http://www.randomhacks.net/2014/09/19/rust-lifetimes-reckless-cxx/

<!--

Is this a contrived example?
Of course it is!
However, don't forget what John Carmack,
the lead programmer of Wolfenstein, Doom, and Quake series,
once said in an interview:

    If something is allowed by the language syntax,
    sooner or later it will end up in your codebase.

-->


# Proof? Let's consult Valgrind


# Rust wouldn't even compile it!

TODO: equivalent example in Rust


# References

- [Beautiful Native Libraries][native-libs]
- [Roat to Rust 1.0](http://blog.rust-lang.org/2014/09/15/Rust-1.0.html)
- [Flyweight Pattern](http://en.wikipedia.org/wiki/Flyweight_pattern)
- [Operating System Development in Rust](https://github.com/rust-lang/rust/wiki/Operating-system-development)

[native-libs]: http://lucumr.pocoo.org/2013/8/18/beautiful-native-libraries/
