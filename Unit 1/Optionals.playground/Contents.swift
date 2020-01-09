import UIKit

// Optionals: is a type that represents two possibilities. Either we have a value or we do not have a value.


// Swift data types support optionals. e.g
/*
 String
 */

//==============================================================
//                       Introduction to Optionals
//==============================================================

var name: String = "Alex"
print(name)

var age: Int? = 21 // optional Int?
print(age) // nil = doesn't have a value

var num = Int("Its Monday")

//==============================================================
//                     Ways to unwrap Optionals
//==============================================================
// 1. Forced unwrapping using an exclaimation mark "!"
//
// 2. Nil-coalescing using two question marks ?? followed by a default value that we provide.
//
// 3. Optional binding using if let, where a value is assigned the existing value if one is available.
//
// 4. Implicit unwrapping e. g var name: String:

//==============================================================
//                       Forced unwrapping
//==============================================================

let decadeFromNow = age! + 10 // Cannot add Int? + Int
print(decadeFromNow)

// To be used sparingly Only when you the developer is guaranteed a value at runtime.

//==============================================================
//                       Nil-Coalescing
//==============================================================

var temperature: Int? // degrees

let validTemperature = temperature ?? 67 // 67 is the deafault value in the case temperature is nil

print("temperatue ia \(validTemperature)")

//==============================================================
//              Optional binding: if let, while let
//==============================================================

var wage: Int?  = 40_000 // dollars
var year: Int? // nil by default if a value is not provided

// if let unwrappes the wage variable, if it does have a value, then that value gets assignes to that bindedValue constant.

if let validWage = wage,
    let validYear = year {
    // we only enter the if let block if wage is NOT nil.
    // if wage has a value the if let is true.
    // if wage is nill the if let is false
    print("You entered \(validWage) as your wage in the current year of \(validYear)")
} else { // else condition is false, or wage is nil
    print("values are unavailable")
}

// string interpolation

var modelYear: Int?
print("model year is \(modelYear ?? 1959)")

//==============================================================
//                  testing optional for equality
//==============================================================

var someValue: Int? = 7
if someValue == 7 {
print("\(String(describing: someValue)) is equal to 7")
}

//==============================================================
//               looping through an optional array
//==============================================================

let numbers: [Int?]

numbers = [4, 9, nil, 10, 20, nil]
// add only valid integers
var sumUnwrappedUsingOptionalBinding = 0
var sumUsingNilCoalescing = 0
for currentNum in numbers {
    if let validNum = currentNum { // optional binding to unwrap the current num
        sumUnwrappedUsingOptionalBinding += validNum
    }
    
 sumUsingNilCoalescing += num ?? 0
}
print("The sum of numbers is \(sumUnwrappedUsingOptionalBinding)")
print("the sum using nil coalescing is \(sumUsingNilCoalescing)")




//==============================================================
//                          Lab Questions
//==============================================================


// Question 1:
//a. Given the variable `userNameOne` below, print *"The username is Test User"*.  Use *Optional Binding* (`if let`) to print the name.

var userNameOne: String? = "Test User"
if let userNameOne = userNameOne {
print("The username is \(userNameOne)")
} else {
print("no username")
}

//b. Given the variable `userNameTwo` below, print *"The username is undefined"*.  Use the *nil coalescing operator* (`??`).

var userNameTwo: String? = nil
let validUserNameTwo = userNameTwo ?? "Undefined"
print("the username is \(validUserNameTwo)")


// Question 3:
//a. Given the variables `rectOneWidth` and `rectOneHeight` below, print "The area of rectOne is 50".  Use *Optional Binding* (`if let`) to print the area.

var rectOneWidth: Double? = 5
var rectOneHeight: Double? = 10

if let rectOneWidth = rectOneWidth,
    let rectOneHeight = rectOneHeight {
    print(" The area of rectOne is \(rectOneWidth * rectOneHeight)")
} else {
    print("no such value")
}


//b. Given the variables `rectTwoWidth` and `rectTwoHeight` below, print "The are of rectTwo is not able to be calculated".  Use *Optional Binding* (`if let`) to print this message.

var rectTwoWidth: Double? = nil
var rectTwoHeight: Double? = nil

if let rectTwoWidth = rectTwoWidth,
    let rectTwoHeight = rectTwoHeight {
    print("the value of rectTwo is \(rectTwoWidth * rectTwoHeight )")
} else {
    print("The are of rectTwo is not able to be calculated")
}
// Question 3:
// a. Given the variables `userOneName`, `userOneAge`, and `userOneHeight` below, write code that prints "Hello Anne!  You are 15 years old and 5.8 feet tall" (1 foot = 12 inches).  Use optional binding.

var userOneName: String? = "Anne"
var userOneAge: Int? = 15
var userOneHeight: Double? = 70

if let bindedName = userOneName,
    let bindedAge = userOneAge,
    let bindedHeight = userOneHeight {
    print("Hello \(bindedName)!, You are \(bindedAge) years old and \(bindedHeight / 12) feet tall")
} else {
    print("no info is available")
}

// b. Given the variables `userTwoName`, `userTwoAge` and `userTwoHeight` below, write code that prints "Hello user!  You are 15 years old and I don't know how tall you are".  Use optional binding

var userTwoName: String? = nil
var userTwoAge: Int? = 15
var userTwoHeight: Double? = nil

if let userTwoName = userTwoName,
let userTwoAge = userTwoAge,
    let userTwoHeight = userTwoHeight {
    print("Hello \(userTwoName), you are \(userTwoAge) years old and \(userTwoHeight) feet tall")
} else {
    print("Hello user you are \(userTwoAge ?? 0) years old and I dont know how tall you are")
}


// Question 5: Given the variables `numOne`, `numTwo` and `numThree`, write code that prints "The sum of all the numbers is " followed by their sum.  If a number is `nil`, don't add it to the sum.  If all numbers are `nil`, the sum is zero.

var numOne = Bool.random() ? Int.random(in: 0...10) : nil
var numTwo = Bool.random() ? Int.random(in: 0...10) : nil
var numThree = Bool.random() ? Int.random(in: 0...10) : nil

if let numOne = numOne,
let numTwo = numTwo,
    let numThree = numThree {
    print("the sum of all the numbers is \(numOne + numTwo + numThree)")
} else {
    print("the sum is zero")
}



