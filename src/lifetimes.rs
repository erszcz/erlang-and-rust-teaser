#![feature(phase)]
#[phase(plugin)]
extern crate regex_macros;
extern crate regex;

#[deriving(Show, PartialEq)]
enum Token<'a> {
    Word(&'a str),
    Other(&'a str)
}

fn tokenize_string3<'a>(text: &'a str) -> Vec<Token<'a>> {
    let mut result = vec![];
    for cap in regex!(r"(\w+)|(\W+)").captures_iter(text) {
        let token =
            if cap.pos(1).is_some() {
                Word(cap.at(1))
            } else {
                Other(cap.at(2))
            };
        result.push(token);
    }
    result
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
