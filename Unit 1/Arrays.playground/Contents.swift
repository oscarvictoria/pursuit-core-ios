import UIKit

//==================================================================
//                             Arrays
//==================================================================

// Arrays - an array is an ordered collection of items

//==================================================================
//                        inittializing arrays
//==================================================================
// Using Type Annotation we are declearing an array of type String
var bucketList: [String]

bucketList = ["France", "Australia", "South Africa", "Aruba", "Cozumel", "Brazil", "Japan"]

print(bucketList)

// count the items in the array
print( "There are \(bucketList.count) countries on my bucket list")



//==================================================================
//                   Accessing values inside an array
//==================================================================
// Array literal
var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Sturn", "Uranus", "Neptune"]

let dwarfPlanet = ["Pluto"]
let thirdRockFromTheSun = planets [2]
print(thirdRockFromTheSun)
let lastPlanet = planets[planets.count - 1]
planets[8 - 1]

let secondToLast = planets[planets.count - 2]

planets[8 - 2]

print(secondToLast)

print("Our second to last planet is \(secondToLast)")

// print the middle planet

let middlePlanet = planets[planets.count / 2]

//==================================================================
//                  some poperties and methods on arrays
//==================================================================

// property - a variable on an object e.g
//arr count
// method - a fucntion that runs on an instance of an object e.g planets. append(:_)

// first
// if planets.first is not nill assign the value to the firstPlanet constant


let programmingLanguages: [String] = []
if let firstProgrammingLanguage = programmingLanguages.first {
    // if we have a valid value of String we enter this if block {......}
    print("first programming language is \(firstProgrammingLanguage)")
}else {
    print("Looks like you haven't started using any programming language")
}

if programmingLanguages.isEmpty {
    print("We need to start programming")
} else {
    print("programming is fundamental")
}

if programmingLanguages.count == 0 {
    print("what are you waiting for?")
}

//==================================================================
//             Remove(at:) - removing intems from an array
//==================================================================

print("There are \(planets.count) planets")

planets.append("Pluto")

print("there are \(planets.count) planets")

print(planets)

let removedPlanet = planets.remove(at:planets.count - 1)
print("Looks like the \(removedPlanet) was ditched again")

print("There are \(planets.count) planets")

//==================================================================
//             Remove(at:) - remove all elements
//==================================================================

//planets.removeAll()

print("there are \(planets.count) planets")

let randomPlanet = planets.randomElement() ?? "Planet X"
print("random planet is \(randomPlanet)")


// popLast()

let oopsAnotherPlanetIsGone = planets.popLast() ?? "the planet was gone"

print("Looks like \(oopsAnotherPlanetIsGone) was gone")


//==================================================================
//                          modifying arrays
//==================================================================
var classRoom1 = ["Maigrett", "Gregg", "Adam"]
var classRoom2 = ["Aaron", "Jack", "Vic"]

classRoom1 += classRoom2

print("classroom 1 has \(classRoom1.count) of fellows")


//==================================================================
//             iterating or looping through arrays
//==================================================================
// method 1: iterating through array
for planets in planets {
    print("Planet name is \(planets)")
}

//method 2: interacting using enumerated() to gain access to the current index in the for- in loop
for (index, planet) in planets.enumerated() {
    print ("\(planet) \(index + 1)")
}

// method 3: using a range
for index in 0..<planets.count {
    print(planets[index])
}
 


let colors = ["Orange", "Red", "Yellow", "Turquoise", "Lavender"]


print("\(colors [0]), \(colors [2]), and \(colors [4]) are some of my favorite colors")

var westernStates = ["California", "Oregon", "Washington", "Idaho", "Illinois", "Kansas"]

westernStates.remove(at:5)

westernStates.remove(at: 4)

print(westernStates)

let moreStates = ["Hawaii", "New Mexico", "Alaska", "Montana", "Texas", "New York", "Florida"]
print("\(moreStates [0]) : Not continental")
print("\(moreStates [1]) : Continental")
print("\(moreStates [2]) : Not continental")
print("\(moreStates [3]) : Continental")
print("\(moreStates [4]) : Continental")
print("\(moreStates [5]) : Continental")
print("\(moreStates [6]) : Continental")

// Arrays Part 2
//==================================================================
//                           Array Review
//==================================================================

print("test")

var musicalArtist = ["John Mayer", "Bob Marley", "Burning Spear", "Steel Pulse", "Mos Def", "The Beatles", "Norah Jones", "Lauryn Hill"]

let artist = musicalArtist[2]
print("Currently playing \(artist) on spotify")

//==================================================================
//                        Array Slice
//==================================================================

// array slice is a view of the array

let raggaeStar = musicalArtist[1...3]
print("some Raggae superstars are \(raggaeStar)")

// modifying the value of an array using subscribing
musicalArtist[1] += " (The Raggae Legend)"
print(musicalArtist)

// replace an element using subscript

musicalArtist[musicalArtist.count - 1] = "Prince"
print(musicalArtist)

//==================================================================
//                  Multi-Dimensional Arrays
//==================================================================

let matrix = [[1, 2, 3],
              [4, 5, 6],
              [7, 8, 9]]
let exampler = ["Brandon", "Eddie"]

print("current count is \(matrix.count)")

// using a for-in loop print out the elements of the matrix
for arr in matrix {
    for num in arr {
        print(num, terminator: " ")
    }
    print()
}

let firstInnerArray = matrix[0]
print("first element in matrix is \(firstInnerArray)")

// print out last element
let lastInnerArray = matrix [matrix.count - 1]
print("the last element in matrix array is \(lastInnerArray)")
