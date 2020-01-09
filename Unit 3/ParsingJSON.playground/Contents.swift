import UIKit

var str = "Hello, playground"

// New topics related to JSON parsing  in Swift

/*
 - JSON - Web formated data in Javascript formatting, root level object and be an array or a dictionary
 - Codable
 - do{...}catch{...} - is  block of code we are attemtting to exucute that can throw an error
 in the
 - JSONDecoder() is the swift class that does the actual decoding of the JSON data to our swift object, e.g here JSON -> JSON object
 */

// Codable is an alias that encapsulates the (Decodable and Encodable) protocol

struct Person: Codable {// we need to conform to codable in order to decode the JSON data
    let name: String
    let occupation: String
    let age: Int
    let latitude: Double
    
}

let jsonData = """

{
    "name": "Oscar",
    "occupation": "iOS developer",
    "age": 21,
    "latitude": 40.73
}


""".data(using: .utf8)!

// Person.self implies that the JSON root level object is a dictionary
// [Person].self implies that the root level object is an array

do {
    let person = try JSONDecoder().decode(Person.self, from: jsonData)
    print("Persons name is \(person.name) and occupation is \(person.occupation)")
} catch {
print("decoding error: \(error)")
}
