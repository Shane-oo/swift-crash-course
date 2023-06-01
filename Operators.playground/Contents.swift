import Foundation


let myAge = 23
let yourAge = 20

// all binary infix
if (myAge > yourAge) {
    "I'm older than you"
}
else if (myAge < yourAge){
    "I'm younger than you"
}
else{
    "we are the same age"
}

let myMothersAge = myAge + 30

let doubleMyAge = myAge * 2

// 1. unary prefix
let foo = !true

// 2. unary postfix
let name = Optional("Shane")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

// 3. binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"


let age = 30
let message = age > 18 ? "You are an adult" : "You are a child"

