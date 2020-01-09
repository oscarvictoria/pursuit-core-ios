import UIKit

// Classes: Building blocks that enable us to create complex "objects" in our programs. Those objects are created using properties and methods.

//==============================================================
// Class syntax:
//==============================================================

class MyFirstClass {
    
}

//==============================================================
// Inheritance - Onlh classes can inherit from other classes
//==============================================================

class Person {
var name = "Jane Doe" // stored property
var age = 21
    
// instance method
    func info() {
        print("This person name is \(name) and age is \(age)")
    }
}

// fellow inherits from Person
// felllow is a subclass of Person
// Person is the parent or superclass of fellow
// In swift we only have single inheritance meanign we can only inherit from one parent

// Object oriented programming consist on those concepts:
// - Inheritance
// - encapsulation
// - polymorphism

// the class fellow inherits from the person class above
class fellow: Person {
    override func info() {
        print("\(name) is a fellow at pursuit and is \(age) years old")
    }
}

class Employe: Person {
    var position = "iOS developer"
    var salary = 85_000
    
    
    override func info() {
        print("\(position) is making $\(salary)")
    }
    
}



// creating an instance of fellow()

let brandon = fellow()
brandon.name = "Brandon"
brandon.age = 30
brandon.info()

// before the fellow class over rode info() method from the parent class this was the output from the print statement
// "this person is brandon and age is 30

// after over riding info() in the fellow class the print statement comes from the overriden method
// "brandon" is a fellow and is 30 years old"


//==============================================================
// polymorphis - changing form of an obect
//==============================================================

let tom = Person()
tom.name = "Tom"

let john = Employe()
john.name = "John"


let bienbenido = fellow()
bienbenido.name = "Bienbenido"

// an array of instances from above

let people = [tom,john,bienbenido]

// if we were to loop over the people array what for example would be thr info() message for bienbenido

for person in people {
    person.info()
}


//==============================================================
// structs are value types - meaning assigning a new variable that new variable gets a copy of the original, Changing the copy does not change the original
// classes are referance types - multiple instances point to the same object meaning object b can mutate object a
//==============================================================

// creating an instance of fellow() named anna

let anna = fellow()
anna.name = "Anna"
print(anna.name)

// assigning the luba the anna object

let luba = anna
print(luba.name)

luba.name = "Luba"

print(anna.name)


//==============================================================
// Swift provides a way to chack for object equality of identity using ===
//==============================================================

if anna === luba {
    print("both objects are pointing to the same referance")
}


//==============================================================
//                           Initializers
//==============================================================

struct Dog {
    var breed: String
    var age: Int
}

var frenchBullDog = Dog(breed: "french bulldig", age: 7)

//==============================================================

// compiler error if class does not provide default values for ALL propertirs
class Game {
    // properties
    var name: String
    var noOfPlayers: Int
    
    // initializers
    init(name: String, noOfPlayers: Int) {
        self.name = name
        self .noOfPlayers = noOfPlayers
        
    }
}


// created an instance of game
let basketball = Game(name: "basketball", noOfPlayers: 5)

// accessing properties

basketball.name = "NBA"


//==============================================================
//               creating instances from a dictionary
//==============================================================
//
//class Playlist {
//    var name: String
//    var trackCount: Int
//    var description: String
//    var isTop100: Bool
//
//    // Initializer
//
//    init(name: String, trackCount: Int, description: String, isTop100: Bool) {
//
//
//
//        self.name = name
//        self.trackCount = trackCount
//        self.description = description
//        self.isTop100 = isTop100
//
//        func info() {
//            print("\(name) contains \(trackCount) tracks. \(description)") {
//                if isTop100 {
//                    true
//                }
//            }
//        }
//
//}
//
//let playlistDict: [String: Any] = ["name": "Best pop Songs 2019", "trackCount": 120, "description": "Awsome Playlist", "isTop100": true]
//
//func getPlaylist(dict: [String: Any]) -> Playlist?  {
//    // accesing the name key in dict
//    // typecasting Any to string using optional downcasing as?
//    // used nil- coalecing to unrwrap optional String? to String
//    let name = dict["name"] as? String ?? "No name available"
//    let trackCount = dict["trackCount"] as? Int ?? 0
//    let description = dict["description"] as? String ?? "No description available"
//   let isTop100 = dict[isTop100] as? Bool ?? false
//    let playlist = Playlist(name: name, trackCount: trackCount, description: description, isTop100: isTop100)
//    return playlist
//}
//
//let playlist = getPlaylist(dict: playlistDict)
//    playlist?.info()

//==============================================================
//                  Structs and Classes lab 2
//==============================================================
// Question 1:

class Giant {
 var name: String = "Fred"
 var weight: Double = 340.0
 var homePlanet: String = "Earth"
}

let fred = Giant()

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"

//==============================================================
//                  Structs and Classes lab 2
//==============================================================

