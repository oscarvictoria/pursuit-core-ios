import UIKit

// Sets: an unordered collection whose elements arenunique

//==============================================================
//               Inittializing and populating a set
//==============================================================

// protocols: Hashable, Sequences, Collection

var accountNumbers: Set<Int> = [] // uses type annotation
var accountNumber2 = Set<Int>() // uses set initializationn
var accounntNumbers3: Set<Int> = [34302, 9294993, 3343030304]

var mixedArr: [Any] = [2000, "Tiff", false]
for element in mixedArr {
    if let num = element as? Int {
        print("num is \(num)")
    }
    if let str = element as? String {
        print("String is \(str)")
    }
    if let bool = element as? Bool {
        print("bool is \(bool)")
    }
}

//==============================================================
//              accessing values in a set
//==============================================================
// isEmpty

if accountNumbers.isEmpty {
    print("accountNumbers is empty")
}

//
print("there are \(accounntNumbers3.count) elements in accounntNumbers3")

// converting array to a set removes any duplicates from the array since elements in a set has to be unique.
let colors = Set(["blue", "white", "red", "yellow", "white"])
print(colors)

//==============================================================
//          using contains to find an element in a set
//==============================================================

let fellows: Set <String> = ["Christina", "Gregg", "Maitree", "Joshua"]
for fellow in fellows {
    print(fellow)
}

if fellows.contains("Christian") {
    print("found fellow")
}


//==============================================================
//                    performing set opertions
//==============================================================

let a: Set<Int> = [1, 2, 3, 4, 5, 6]
let b: Set<Int> = [5, 6, 7, 8]


// intersection
let intersection = a.intersection(b).sorted()
print(intersection) // [5,6]

// symetricDiferences
let symmetricDifference = a.symmetricDifference(b).sorted()
print(symmetricDifference)

// union
let union = a.union(b).sorted()
print(union)

// subtracting
let subtracting = a.subtracting(b).sorted()
print(subtracting)

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true
