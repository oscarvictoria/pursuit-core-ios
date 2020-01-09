import UIKit

// Closures: A block of code that can be called in our program similar to a function. In fact a closure is a type of function. We will see and recognize differences as we journey through this course.

//==============================================================
//                    Function Review
//==============================================================

// returns void. This function doesnt return anything.
// Internal parameter name are used in the function body defintion,
// External parameter name is used by the caller, they will see the external name e. g printGreeting(name: "Bob")
func printGreeting(_ name: String, _ age: Int ) {
    // code
    print("Good morning \(name), your age is \(age)")
}


// underscore make the fuction go to the print statement as a defaul value.

// call function
printGreeting("Alex", 45)

print("Good Friday morning", terminator: " 😭 ")

print()











//==============================================================
//                  Closure Syntax
//==============================================================

/*

 { (parameters) -> (return type) in
    statements
}
 
 */

// closures:
//  - can be passed as fucntion parameters
// - can be assigned into a variable or constatnt
// - can be returned from a fucntion


// Empty Closure

//let greeting = {
    
//}

//==============

// Greeting is a closure, does not have parameters, does not return a value, returns Void (nothing)

let greeting = {
  print("Welcome to closures.")
}

greeting()


//  Closure that takes parameters and returns a value
let square = { (num: Int) -> (Int) in
    return num * num
}

print(square(10))

// Refactoring square closure above to make use of shorthand closure syntax and shorthand argument names $0 is the first parameterm here we only have one parameter, if you have two parameters it would be $0 followed by $1 and so on

let squareShortHandSyntax: (Int) -> (Int) = { $0 * $0}
print(squareShortHandSyntax(25)) // 25 * 25 = 625

// practice, create, add, subtract and divide using shorthand closure syntax and argument names

let squareShortHandSyntaxAdd: (Int, Int) -> (Int) = { $0 + $1}
print(squareShortHandSyntaxAdd(2, 6))

let squareShortHandSyntaxSubtract: (Int) -> (Int) = { $0 - $0}
print(squareShortHandSyntaxSubtract(5))

let squareShortHandSyntaxDivide: (Int, Int) -> (Int) = { $0 / $1}
print(squareShortHandSyntaxDivide(10, 2))

//==============================================================
//                  Closures as function parameters
// closures are first class citizens meaning we can pass clouseres like we do variables in functions, can also return a closure
//==============================================================

// the name of the closure could be anyname, here we are simply using the word "closure" but it could be "action", "myClosure"......

func helloGreeting(closure: (String) -> ()) {
    print("Hello iOS 6.3")
    closure("Heather")
}

// calling a function that takes in a closure using trailling closure syntax
helloGreeting { name in
    print("Hello \(name) its friday 🚀")
}

func printClosure(action: () -> ()) {
    action()
}

// Called our print Closure
printClosure {
    print("Inside printClosure trailing closure")
}

//==============================================================
//     Use some built-in higher order fucntions (closures)
//
// - map {....} - Transforms a value. e.g 4 * 4 = 16 returns an array of collections
// - filter {....} - Filters values based a condition return an array of collection
// - reduced(0, +) - Takes an initial value, e.g 0 and a
// - compactMap {....} - Returns non-nil values
// - sorted { > } - You provide a sorting closure and it returns base on the sorting algorithm
// - forEach {....} - Similar to the for-in loop
//==============================================================

// given an array of integers return an array where each value is squared
// input: [1, 2, 3, 4, 5, 6]
// output:[

let list1 = [1, 2, 3, 4, 5, 6]
func returnSquares(arr: [Int]) -> [Int] {
    var squares = [Int]()
    for num in arr {
        squares.append(num * num)
}
    return squares
}
print(returnSquares(arr: list1))

// using map

let usingMapResult = list1.map { $0 * $0 }
print(usingMapResult)


//==============================================================
//                        Using Filter
//==============================================================

//given an array of fellows return only fellows where their names begin with "a" case -insensative.
// input = ["George", "Tom", "Ahad", "James", "Ameni"]
// output = ["Ahad", "Ameni"]

let list2 = ["George", "Tom", "Ahad", "James", "Ameni"]
let filterResults = list2.filter { $0.lowercased().hasPrefix("a") }
print(filterResults)

//==============================================================
//                        using reduce
//==============================================================
// given an array of integers return the sum
// input: [10, -10, 50, 20]
// output: 70

let list3 = [10, -10, 50, 20]
let reducedResults = list3.reduce(0, +)
print(reducedResults)

//==============================================================
//                        using compactMap
//==============================================================
// given an optional array of integers return ONLY valid integers

// input: [nil, 56, 12, -89, nil, nil, 0, 6]
// output:

let list4 = [nil, 56, 12, -89, nil, nil, 0, 6]
let compactResults = list4.compactMap { $0 }
print(compactResults)
