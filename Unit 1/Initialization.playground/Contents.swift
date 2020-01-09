import UIKit

class Playlist {
  // properties
  var name: String
  var trackCount: Int
  var description: String
  var isTop100: Bool
  
  // Designated Initializer
  init(name: String,
       trackCount: Int,
       description: String,
       isTop100: Bool){
    self.name = name
    self.trackCount = trackCount
    self.description = description
    self.isTop100 = isTop100
  }

// Convininace inintializer and failable initializer
    convenience init?(dict: [String: Any]) {
        // using guard let to unwrap value from key in dictionary.
        // also we are using optional downcasting as? to cast to expected type.
        // return exits the initializer, does not continue through functon.
        guard let name = dict["name"] as? String, let trackCount = dict["trackCount"] as? Int, let description = dict["description"] as? String, let isTop100 = dict["isTop100"] as? Bool else {
            return nil
        }
        
        // if all values are available in the guard statement, then we call our designated initializer
        self.init(name: name,
                trackCount: trackCount,
                description: description,
                isTop100: isTop100)
    }
  
    convenience init(){
        
        let names = ["pursuit coding list", "zumba rocks","studyplaylist"]
        
        self.init(name: names.randomElement() ?? "z100" , trackCount: 200, description: "Aswsome coding music", isTop100: false)
    }
    
    convenience init?(name: String) { // "th"
      if name.count < 3 {
        return nil
      }
      self.init(name: name,
                trackCount: 34,
                description: "Currently trending",
                isTop100: true)
    }
    
    
  // instance method
  func info() {
    print("\(name) contains \(trackCount) tracks. \(description)")
    if isTop100 {
      print("\(name) is on the top 100 Spotify list")
    }
  }
}

let playlistDict: [String: Any] = ["name": "Best Pop Songs 2019",
                                   "trackCount": 128,
                                   "description": "Awesome playlist",
                                   "isTop100": true
]

// create a playlist instance using the playlistDict above and print the track count
// output: 128


if let newPlaylist = Playlist(dict: playlistDict) {
    print("The track count of the playlist is \(newPlaylist.trackCount)")
}

let randomPlaylist = Playlist()
print(randomPlaylist.name)

if let playlistWithName = Playlist(name: "Reggeaton") {
    print("Playlist was created")
} else {
    print("Playlist was not created")
}
