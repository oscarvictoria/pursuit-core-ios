import UIKit

// Swift Single Line comment
/* Multi line comment
 Swift was introduced in 2014.
 Swift is type safe language meaning you can't mix a decleared data type with another e.g If our name = "Alex"
 you cannot update name = 10 // won't compile, type string is not not an int.
 -modern language
 -provides optimals thayt allows us to know weather a variable has a value or not.
 
 */


var str = "Hello, playground"

// = comment

// Data Types: String, Int (Integer),

// a variable fellowName of type String
//Type: Implicit declaration of a variable

var fellowName = "David Lin" //


    
fellowName = "Chelsie Christmas"


print(fellowName) // Chelsie Christmas

fellowName = "34"

// Does not compile = Cannot add different data types
// let newString = "34 + 12"

// consantation = adding together

let fullName = "Alex" + " Paul" //Alex Paul
var fallCycle = "IOS 6.3"
// using string Interplation we are printing we are printing fullName's description
print ("Persons fullName is \(fullName)")




// Types Annotation: Explicently writting the data type using ":" (column)
var cohort: String = "IOS 6.3"

let lowercaseName = "Alex"
let uppercaseName = "Alex"

let stringResult = lowercaseName == uppercaseName

let alphabeticalOrder = "kelby" < "Lorraine"
print ("alphabeticalOrder result \(alphabeticalOrder)")


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///
///                          CHARACTER
///
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//var alphabet: Character = "c"


// mutating cohort
// var is mutable = meaning can be changed

cohort = "7.8"


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///
///                     INTEGERS (INT)
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// decleared variable age and initialized value 32

var ageOfFellow = 32

var futureAge = ageOfFellow + 8

print(futureAge)

// String interpratation is embeddign a variable into a String using /(variable name) syntax as seen belwo
print("Age of fellow 8 years from now is \(futureAge)")

// integer division truncates dacimals (removes them)

let integerDivison = 16 / 3

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///                         Division by 0
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//89 / 0 DOES NOT COMPILE

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////                                                           Double
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var balance = 100005.9

// re assign balance a new value of 85000
balance = balance + 85000

print (balance)

balance -= 100080


print(balance)

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////                                                Float vs Double
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//// Float hold 32-bit vs 65-bit of a double

let floatNum: Float = 67.999
let doubleNum = 67.999999999999999
print ("float is \(floatNum) and double is \(doubleNum)")

// Does not compile - CANNOT ADD  A FLOAT WITH A DOUBLE
// let accounbalance = floatNim  + doubleNum

// Here we are casting or converting a float to a double
let accountBalance: Double = Double(floatNum) + doubleNum
print("account balance is now \(accountBalance)")

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////                                                            Bolean = bool
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var result = 70 < 100

print(result)

var otherResult = result && true
print(otherResult)

-5 > -2 && 3 >= -5

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///                      Arithmic Operator
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//let salary = 20000
//salary *= 2
//print(salary)

var salary = 20000
salary *= 2
print(salary)

var marathonTime = 600
marathonTime /= 2
print(marathonTime)


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///                     Modulo Operator
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

var myresult = 16 % 3
print(myresult)

var even = 12 % 6
print(even)


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//                            Constants
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

let pi = 3.14



