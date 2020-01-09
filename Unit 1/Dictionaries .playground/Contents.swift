import UIKit

// Dictionary: a collection of key-value pairs, the key needs to conform to the hashable protocol, this simply means thee key needs to be made unique by a hashing algorithm
let name = "Alex"
let hashValue = name.hashValue
print("hash value of \(name) is \(hashValue)")

//==============================================================
//          initializing and populating dictionaries
//==============================================================

// method 1: uses the initiazlization method
// decleared and initialized an empty dictionary
// key is of type Int
// value is of type String
var nameOfIntegers = [Int: String]()

// count number of elements in nameOfIntegers
// count is a property on the Collection Protocol
// dictionary, arrays and sets conform to ollection
// a property is a variable or constant on a type.
print("there are \(nameOfIntegers.count) elements currently in the nameOfIntegers dictionary")

// assign a key value (element) pair to nameOfIntegers

nameOfIntegers[16] = "sixteen"
nameOfIntegers[17] = "seventeen"
print(nameOfIntegers)

print("there are \(nameOfIntegers.count) elements now")

// can we index the first element using [0]

// the code below say find me the value where the key is 0
 let num = nameOfIntegers[0] ?? "zero" // because our key is an Int

print("num is \(num)")



// method 2:

// var airports: [String: String] = [:] valid empty dictionary

var airports: [String: String] = ["Copenhagen":" CPH",
                                  "Los Angeles" : "LAX",
                                  "Saint lucia" : "LCU"]

print("there are \(airports.count) airports currently")

//==============================================================
//                 accessing dictionary values
//==============================================================

// we also have an isEmpty property on dictionary
if airports.isEmpty {
    print("airports is empty")
} else {
    print("there are \(airports.count) airports")
}

//==============================================================
//                    looping through a dictionary
//==============================================================

let bucketList: [String: String] = ["Sweeden": "Stockholm", "Australia" : "Cairnes", "Mexico" : "Cozumel", "New Zealand" : "Wellington", "Morrocco" : "Casablanca"]

for (country, place) in bucketList {
    print ("I want to visit \(place) located in \(country)")
}

let destination = bucketList["New Zealand"] ?? "Unknown"
print("your next destination is \(destination)")

let favoriteAlbums = ["John Mayer" : "Room for Squares" , "Post Mallone" : "Stoney", "Tupac" : "All Eyez on Me", "Drake" : "Take care", "Teyana" : "k.t.s.e"]

// given album name, find the artist
// using a for-in loop to search for given value

var artistName = ""
for (currentArtist, albumName) in favoriteAlbums {
    if albumName == "Stoney" {
        artistName = currentArtist
    }
}
print("\(artistName) created the Stoney album")

// get values from a dictionary
let albums = Array(favoriteAlbums.values)
for album in albums {
    print("album is \(album)")
}

// get keys from a dictionary
let artist = Array(favoriteAlbums.keys)
for artist in artist {
    print("artist is \(artist)")
}


// dictionaries are unsorted so we will demo how to sort the values and print in a sorted manner
// question: given albums, sort by artist name
// sorted () by default is ascending, means a - z
// descending is z - a
for artistName in favoriteAlbums.keys.sorted() {
    print("artist name sorted is \(artistName)")
}
