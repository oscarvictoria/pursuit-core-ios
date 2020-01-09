import UIKit

var str = "Hello, playground"

//=======================================================================
//                          Strings
//=======================================================================

var message = "good morning i0S 6.3"

for char in message {
    print("character is \(char)")
}

print ("message count is \(message.count)")


//=======================================================================
//                              Unicode
//=======================================================================

let name = "ale\u{301}x" // exaple of unicode scaler \u{301}

// accessing and modifying String


let fellows = ["Kelby", "Stephanie"]

fellows.count

let firstFellow = fellows[0]

// access the first character in "Swift"

let programmingLanguage = "Swift"


let firstIndex = programmingLanguage.startIndex

let firstCharacter = programmingLanguage[firstIndex]

let endIndex = programmingLanguage.endIndex
let lastCharacterIndex = programmingLanguage.index(before: endIndex)
let lastCharacter =
    programmingLanguage[lastCharacterIndex]
print("last character in \(programmingLanguage) is \(lastCharacter)")

print("first character in \(programmingLanguage) is \(firstCharacter)")


//=======================================================================
//                      making a range using indices
//=======================================================================


let alphabets = "abcdefghijklmnopqrstuvwxyz"
var counter = 0

for char in alphabets {
    if counter < 6 {
        print(char)
        counter += 1
    } else { break }
}
print("for loop has ended")

// Using fora for loop and enumerated print the first six alphabets

for (index, alphabet)  in alphabets.enumerated() {
    if index < 6 {
        print ("\(alphabet) at index \(index)")
    } else { break }
   
}



//let alphabetStartIndex = alphabet.startIndex

//=======================================================================
//                      multi-line Strings
//=======================================================================

let multilineString = """
Hello
Hello
Hello
"""

print(multilineString)
