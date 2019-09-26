import UIKit

var str = "Hello, playground"

// = comment

// Data Types: String, Int (Integer),

// a variable fellowName of type String
//Type: Implicit declaration of a variable
var fellowName = "David Lin"


// Types Annotation: Explicently writting the data type using ":" (column)
var cohort: String = "IOS 6.3"
//
//
///                 CHARACTER
///


var alphabet: Character = "c"


// mutating cohort
// var is mutable = meaning can be changed

cohort = "7.8"


///////////////////
///////////
////////            Int
////////
// decleared variable age and initialized value 32
var ageOfFellow = 32

var futureAge = ageOfFellow + 8

futureAge

// String interpratation is embeddign a variable into a String using /(variable name) syntax as seen belwo
print("Age of fellow 8 years from now is \(futureAge)")


////////////////////////////////
/////   Double
///////////////////

var balance = 100005.9

// re assign balance a new value of 85000
balance = balance + 85000

print (balance)

balance -= 100080


print(balance)



////
//// Bolean = bool
///
////

var result = 70 < 100

print(result)

var otherResult = result && true
print(otherResult)

-5 > -2 && 3 >= -5

////
////
///Arithmic Operator
///
///


//let salary = 20000
//salary *= 2
//print(salary)

var salary = 20000
salary *= 2
print(salary)

var marathonTime = 600
marathonTime /= 2
print(marathonTime)


////
/// Modulo Operator
///
////

var myresult = 16 % 3
print(myresult)

var even = 12 % 6
print(even)

