# Rust Teaser

## Who am I?

- Radek Szymczyszyn
- MongooseIM / ejabberd / XMPP engineer from Erlang Solutions in Kraków
- <radoslaw.szymczyszyn@erlang-solutions.com>
- [https://github.com/erszcz/](https://github.com/erszcz/)


## Intro

I won't introduce the whole language, because I simply can't in 15 minutes.
Besides, there's a great guide on [rust-lang.org][rust-lang] which will do it better than I.

Instead, I'll show you one aspect of what Rust might be good for and why.
What is it? The stuff we write in C now - system-level software and shared libraries.
Why? Because it allows you to touch the metal if you have to,
but otherwise strives to be as safe as possible.


## Rust features

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


## Rust features

- algebraic data types (Erlang tagged types might work as substitutes)
- pattern matching
- closures
- type inference (Erlang is dynamically typed -- no need for inference)
- <span style="color: #c00;">zero-cost abstractions (C++ anyone? iterators are just pointers,
  destructors instead of garbage collection)</span>
- <span style="color: #c00;">guaranteed memory safety (linear types)</span>
- concurrency without data races (tasks powered by OS threads **or**
  lightweight processes)
- <span style="color: #c00;">minimal runtime (just like C)</span>
- <span style="color: #c00;">efficient C bindings</span>


## Algebraic data types & pattern matching

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


## No generics (think: Google Go)

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


## Generics

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


## Generics and Traits

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
    fn area<S>(shape: &S) -> f64 { shape.area() }

    fn area<S: HasArea>(shape: &S) -> f64 { shape.area() }

    fn main() {
        let c = Circle{ x: 2.0, y: 2.0, radius: 4.0 };
        let s = Square{ a: 2.0 };
        println!("circle area: {:f}", area(&c));
        println!("square area: {:f}", area(&s));
    }


## Traits

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


## What's wrong with this code?

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

Idea stolen from [http://www.randomhacks.net/2014/09/19/rust-lifetimes-reckless-cxx/][recklesscxx]

<!--

Is this a contrived example?
Of course it is!
However, don't forget what John Carmack,
the lead programmer of Wolfenstein, Doom, and Quake series,
once said in an interview:

    If something is allowed by the language syntax,
    sooner or later it will end up in your codebase.

-->


## Let's ask Valgrind

<!-- -->


## Rust to the rescue: Lifetimes

    #[deriving(Show, PartialEq)]
    enum Token<'a> {
        Word(&'a str),
        Other(&'a str)
    }

    fn tokenize_string3<'a>(text: &'a str) -> Vec<Token<'a>> {
        // ...
    }

    #[test]
    fn test_parse_safe() {
        assert_eq!(vec![Word("The"), Other(" "), Word("cat")],
                   tokenize_string3("The cat"));
    }

    // Won't compile!
    // lifetimes.rs:39:26: 39:30 error: `text` does not live long enough
    // lifetimes.rs:39         tokenize_string3(text.as_slice())
    //#[test]
    //fn test_parse_unsafe() {
    //    let v = {
    //        let text = "The cat".to_string();
    //        tokenize_string3(text.as_slice())
    //    };
    //    assert_eq!(vec![Word("The"), Other(" "), Word("cat")], v);
    //}


## Erlang NIFs in Rust (1)

**Bindgen** generates boilerplate for interfacing with C from Rust based on
existing C header files.
The only problem is it **doesn't understand macros.**

Writing a NIF shared library in Rust boils down to expanding the `ERL_NIF_INIT` macro:

    // file: er.c

    ErlNifFunc funcs[] =
    {
        {"native_add", 2, native_add}
    };

    ERL_NIF_INIT(er, funcs, NULL, NULL, NULL, NULL);


## Erlang NIFs in Rust (2)

Which means writing the following in Rust instead of C:

    // file: er.E (macro expanded er.c)

    ErlNifFunc funcs[] = {
        {"native_add", 2, native_add}
    };

    ErlNifEntry* nif_init(void) {
      static ErlNifEntry entry = {
        2,              // int major;
        6,              // int minor;
        "er",           // const char* name;
        sizeof(funcs) / sizeof(*funcs),  // int num_of_funcs;
        funcs,          // ErlNifFunc* funcs;
        ((void *)0),    // int  (*load)   (ErlNifEnv*, /* skipped */);
        ((void *)0),    // int  (*reload) (ErlNifEnv*, /* skipped */);
        ((void *)0),    // int  (*upgrade)(ErlNifEnv*, /* skipped */);
        ((void *)0),    // void (*unload) (ErlNifEnv*, /* skipped */);
        "beam.vanilla"  // const char* vm_variant;
      };
      return &entry;
    }

Easy, right? Wrong!
It's not possible to declare a static C-style string (`"er"`, `"beam.vanilla"`) from Rust! But there is hope...


## Erlang NIFs in Rust (3)

    static mut funcs: [c::ErlNifFunc, ..1] = [
        c::ErlNifFunc { name  : 0 as *const c_char,
                        arity : 2,
                        fptr  : Some(native_add) }
    ];

    static mut nif_entry: c::ErlNifEntry = c::ErlNifEntry {
        major           : 2,
        minor           : 6,
        name            : 0 as *const c_char,
        num_of_funcs    : 1,
        funcs           : 0 as *mut c::ErlNifFunc,
        load            : None,
        reload          : None,
        upgrade         : None,
        unload          : None,
        vm_variant      : 0 as *const c_char
    };

    #[no_mangle]
    pub extern "C" fn nif_init() -> *mut c::ErlNifEntry
    {
        unsafe {
            funcs[0].name = "native_add".to_c_str().unwrap();
            nif_entry.name = "er".to_c_str().unwrap();
            nif_entry.num_of_funcs = funcs.len() as i32;
            nif_entry.funcs = funcs.as_mut_ptr();
            nif_entry.vm_variant = "beam.vanilla".to_c_str().unwrap();
            &mut nif_entry
        }
    }


## Rust for embedded systems

Rust runs on ARM Cortex-M0 (the smallest ARM available). A trivial binary uses 1K flash and 100 bytes RAM.

In general, it runs on 32-bit CPUs.
There're some google hits about running on Arduino, but pay attention that
it's Arduino Due, not the original one. Due is actually an ARM chip in disguise.


## Outro / References

Rust is still in development. YMMV!

[Niko Matsakis][rust-1.0]: "We plan to ship the 1.0 beta around the end of the year."

Resources:

- [this presentation on GitHub][self]
- [a minimal, but complete, Erlang example project with a Rust NIF][rust-nif]

References:

- [rust-lang.org][rust-lang]
- [Beautiful Native Libraries][native-libs]
- [Reckless C++][recklesscxx]
- [Rust Bindgen][bindgen]
- [Road to Rust 1.0][rust-1.0]
- [Rust for embedded systems][embedded-rust]
- [Operating System Development in Rust](https://github.com/rust-lang/rust/wiki/Operating-system-development)

[self]: https://github.com/lavrin/erlang-and-rust-teaser/
[rust-nif]: https://github.com/lavrin/erlang-rust-nif
[rust-lang]: http://www.rust-lang.org/
[rust-1.0]: http://blog.rust-lang.org/2014/09/15/Rust-1.0.html
[native-libs]: http://lucumr.pocoo.org/2013/8/18/beautiful-native-libraries/
[recklesscxx]: http://www.randomhacks.net/2014/09/19/rust-lifetimes-reckless-cxx/
[bindgen]: https://github.com/crabtw/rust-bindgen/
[embedded-rust]: http://bharr.is/2013/11/13/rust-for-embedded-systems/
