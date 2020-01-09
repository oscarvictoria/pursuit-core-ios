import UIKit
//===================================================================
// Strings Part 2
//===================================================================

// question: given a String, switch on it and print all the characters if it is even or print every other characters if it is odd

let message = "boy"

print("there are \(message.count) characters in the string")

if message.count % 2 == 0 {
    print("string is even")
    } else {
        print("string is odd")


}

// solution for question above:

switch message {
case message where message.count % 2 == 0:
    for char in message {
        print(char, terminator: " ")
    }
default:
    for (index, char) in message.enumerated() where
        index % 2 == 1 {
        print(char, terminator: " ")
    }
}



// "\n" is the end line escape character

//===================================================================
//                          escape characters
//               e.g "\n": newline "\t": tab "\": quote
//===================================================================

let message1 = "\nHello\niOS 6.3 \nGreat to have you!"
print(message1)

let multiLine = """
hello
it's hot
today
"""

print(multiLine)

let tabMessage = "\tProgramming is fun"
print(tabMessage)

let quote = "In \"2014\" Swift was introduced"
print(quote)

//===================================================================
//              Using String initialization methods
//===================================================================

let char: Character = "a"
let str = String(char)
print(type(of: char))
print(type(of:str))

// initialilze a String from an Integer

let currentYear = String(2019)
print("current year is \(currentYear)")

let float: Float = 23.56
let double = 45.12
let result = Double(float) + double
print(result)

//===================================================================
//              String format e.g formatting decimal places
//===================================================================
print("the result of the calculation above is" , String(format: "%.2f" , result))

//===================================================================
//                  Creating a range on a String
//===================================================================

let messageToSelf = "I really love Swift and I'm passionate about coding."

let startIndex = messageToSelf.startIndex

let offsetToSomeCharIndex = messageToSelf.index(startIndex, offsetBy: 18)

let range = startIndex...offsetToSomeCharIndex

let substring = messageToSelf[range]

print ("substring is \(substring)")

//===================================================================
//           search for the index of a character in a string
//===================================================================

let swiftMessage = "I really love Swift ❤️"

let charIndex = swiftMessage.firstIndex(of: "🎈") ?? messageToSelf.startIndex

print("We found \"\(swiftMessage[charIndex])\" in swiftMessage String")

//===================================================================
//                         prefix and sufix
//===================================================================

let name = "alex"
if name.hasPrefix("al") {
    print ("Hi AL!")
}

if "questions".hasSuffix("ions") {
    print("we also have onions")
}

//  contains
let message2 = "questions"
if message2.contains("q") {
    print("message2 contains q")
}

//===================================================================
//                      some Character properties
//===================================================================

let character1: Character = "y"
if character1.isLetter {
    print("\(character1) is a letter")

}


//===================================================================
//                 NSString is an Objective-C API
// API: application programming interface
//===================================================================

var message4 = "coding"

message4 = message4.replacingOccurrences(of: "g", with: "🚀")

print(message4)

let fullname = "Alex Paul Hurtado"
let seperatedNames = fullname.components(separatedBy: " ")
print("there are \(seperatedNames.count) items")
print(seperatedNames)
