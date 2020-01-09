import UIKit

// Structs is a d=building block of a method in which we emulate an "object" in swift.

// Struct syntax

// SomeStruct beelow defines an "Object"
// object oriented programming (OOP) - encapsulates properties and methods on real world objects.


struct SomeStruct {
    // definition of the struct
    // properties - variables or constants on the type (struct)
    // initializers - the method in which you create a type
    // method - function inside of a costom type (struct)
}

struct Resolution {
   // properties
   // stored properties - a property with a default value
   // a property is a variable or constant
    
    var width = 0
    var height = 0
}


//==============================================================
//             Create an instance of Resolution struct
//==============================================================
 
var someResolution = Resolution()

// accesing properties of resolutions using dot syntax
someResolution.width = 1080

print(someResolution)

// structs have a memberwise initializers as opposed to a class that does not
var vga = Resolution(width: 640, height: 480)
print(vga)


//==============================================================
//             Structs and Enums are value types
//==============================================================

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd // Cinema gets a copy of hd
// COPY does not change the original Object

cinema.width = 2048

// what is the value of hd's width????
// Answer: 1920


//==============================================================
//      using object oriented programming to model a Fellow
//==============================================================

enum ProgrammingLanguage {
    case swift
    case objectivec
    case java
    case javascript
    case python
    case noLanguage
}

struct Project {
    var projectName = ""
    var projectDescription = ""
    var programmingLanguage = ProgrammingLanguage.noLanguage
}

enum Cohort {
    case iOS
    case android
    case web
    case dataScience
}


struct fellow {
// properties
    var name = "John Applessed" // stored properties
    var cohort = Cohort.iOS // iOS, android, web, dataScience
    var programmingLanguages = [ProgrammingLanguage]()
    var githhubURL = ""
    var linkedInURL = ""
    var hasProgrammingBackground = false
    var projects = [Project]() // projects

//==============================================================
    // initializers
//==============================================================

//==============================================================
    // methods
//==============================================================
    
    // class methods
    
    // instance methods
    
    func info() {
        print("\(name) currently has \(projects.count) portfolio project(s)")
    }
    
    func resume(language: ProgrammingLanguage) {
        if self.programmingLanguages.contains(language) {
            print("\(name) can be hired for this \(language) position")
        } else {
            
        print("\(name) is not qualified for this position")
        
    }
}

}
// creating instances of "objects"

// create an instance of using the default innitializer of fellow()

var gregg = fellow()
gregg.name  = "Gregg"
gregg.cohort = .iOS
gregg.projects.append(Project(projectName: "Hangman", projectDescription: "Hangman command line project", programmingLanguage: .swift ))
gregg.info()

var oscar = fellow(name: "Oscar", cohort:.iOS, programmingLanguages: [.swift], githhubURL: "http://oscarvictoria/github.com", linkedInURL: "http://oscarvictoria.com", hasProgrammingBackground: false, projects: [Project]())

oscar.info()

oscar.projects.append(Project(projectName: "Calculator", projectDescription: "Command line calculator", programmingLanguage: .swift))

oscar.info()

//instance of project
let instagram = Project(projectName: "Instagram", projectDescription: "Social network", programmingLanguage: .java)

oscar.projects.append(instagram)

oscar.info()

oscar.resume(language: .javascript)

oscar.resume(language: .swift) //  😄


//==============================================================
//                Structs and Classses Lab 1
//==============================================================
// 2.
struct Alien {
 var name: String
 var height: Double
 var homePlanet: String
}
var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

// 3.
class Giant {
 var name: String = "Fred"
 var weight: Double = 340.0
 let homePlanet: String = "Earth"
}

let edgar = Giant()
edgar.name = "edgar"
let jason = edgar
jason.name = "Jason"

print(jason.name)

// 4.

var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"

print(charles.homePlanet)

print(charlesFromJupiter.homePlanet)

// 5:

struct BankAccount {
 var owner: String
 var balance: Double

 mutating func deposit(_ amount: Double) {
 balance += amount
 }

 mutating func withdraw(_ amount: Double) {
 balance -= amount
 }
   
}

BankAccount(owner: "Oscar", balance: 346.89)


var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)

print(joeAccount.balance)
print(joeOtherAccount.balance)

// 6:

struct Person {
    var firstName: String
    var lastName: String
    var middleName: String?
    
    func fullName() {
    print(firstName + " " + lastName)
    }

}

var person1 = Person(firstName: "Oscar", lastName: "Victoria", middleName: "Daniel")
var person2 = Person(firstName: "Ivan", lastName: "Victoria")

print(person2.firstName)

person1.fullName()

person2.fullName()

// 7:

struct Book {
var title: String
var author: String
var rating: Double


}
var someBook = Book(title: "Infinite Jest" , author: "David Foster Wallace", rating: 9.8)

