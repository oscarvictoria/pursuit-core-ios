import UIKit

// Functions: a block of code that enables us to call it anywhere in our project or file.
/*
 Vocabulary
 - Function
 - Arguments
 - Parameters, internal, external
 - Inptut
 - Output
 - Function Definition
 - Calling a function or invoking a function, execute a fucntion
 */

//==============================================================
//                  Function Syntax
//==============================================================

// Function Definition
func myFirstFunction() { // no parameters
    print("Happy hump day 🐪")
}

// call or invoke or execute out myFirstFunction

myFirstFunction() // no arguments

// number is an external parameter name
// x is an internal parameter name
// Int is the data type of the functions input
// Int is also the output of this function
// return types syntax is ->
func doubleNumber(number x: Int) -> Int  {
    let result = x * 2
    return result
}

let resultOfCalculation = doubleNumber(number:10) // function takes one argument of type Int, output returned is of type Int
print(resultOfCalculation)

// write a function that adds two a number then triples it

func addsTwoTimesThreeNumber(num: Int) -> Int  {
    return (num + 2) * 3
    
}

print(addsTwoTimesThreeNumber(num: 2))

// write a fucntion that addds an exclamation mark ! to a string
// input: Hello
// output: hello!

func addsBang(Str: String) -> String  {
    return Str  + "!"
    
}

print(addsBang(Str: "Hello"))

//==============================================================
//                Optinonal types in functions
//==============================================================

func githubProfile(age: Int?, employmentStatus: Bool?) -> Bool? {
    var profileComplete: Bool?
    if let _ = age,
        let  _ = employmentStatus {
      profileComplete = true
    }
    
    return profileComplete
}



if let profileComplete = githubProfile(age: nil, employmentStatus: nil) {
  print("Profile complete \(profileComplete)")
} else {
  print("Profile incomplete.")
}
