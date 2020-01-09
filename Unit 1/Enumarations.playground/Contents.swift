import UIKit

// enumerations: A group of relation values or items e.g. days of the week mta trains lines, number of fingers, compass points.

// enum keyword starts the enum definition
// followed by the name of the enum, which should start with a capital letter. Also signifies that the enum is a data type.


enum CompassPoint {
    case north
    case south
    case east
    case west

}

// create an enum of days of the week

enum DaysOfTheWeek {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

enum Planet {
case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
////===============================================================
// using a switch statemnt we will switch on an enum instance.
//=============================================================
// Instance of a String
let name = "Bob"


// creating an instance of the enum DayOfTheWeek

let day = DaysOfTheWeek.tuesday
var weekend = DaysOfTheWeek.saturday
weekend = .sunday
 
switch day {
case DaysOfTheWeek.monday:
    print("Back to pursuit")
case DaysOfTheWeek.tuesday:
    print("Enums lab is due")
case .wednesday:
    print("Professional Skills")
case.thursday:
    print("Introduction to classes")
case.friday:
    print("Classes and calculator labs are due")
case .saturday:
    print("What should I do today")
case.sunday:
    print("Maybe I should do some prepwork for class tommorow")
}

////===============================================================
//            iterating through an enum's cases
//=============================================================

// Beverages enum is conforming to the protocol CaseIterable by conforming to CaseIterable we are able to get a count of all the cases in an enum

enum Beverage: CaseIterable {
    case coffe
    case tea
    case juice
}

print("There are \(Beverage.allCases.count) beverages")

for beverage in Beverage.allCases {
    print("current beverage is \(beverage)")
}

// enums part 2:

////===============================================================
//  Associated Values - Adds more values to a case
//=============================================================

enum MTALine {
    case redLine(Int)
    case greenLine(Int)
    case purlpleLine
    case blueLine
    case orangeLine
    case brownLine
    case yellowLine(trainName:Character, startTime:Int, endTime: Int)
    case grayLine
}

let train = MTALine.yellowLine(trainName: "Q", startTime: 8, endTime: 12)

let oneTrain = MTALine.redLine(1)

let fiveTrain = MTALine.greenLine(5)

switch train {
case .greenLine(5):
    print("The 5 train runs on time")
case .redLine:
    print("The 1,2,3 trains are running on time")
case .yellowLine(let trainName, let sTime, let eTime):
    print("\(trainName) runs from \(sTime)am to \(eTime)am")
default:
    print("All trains are running normally")
}




func trainInformation(train: MTALine){
    
    switch train {
       case .greenLine(5):
       print("The 5 train runs on time")
    case .redLine:
        print("The 1,2,3 trains are running on time")
    case .yellowLine(let trainName, let sTime, let eTime):
        print("\(trainName) runs from \(sTime)am to \(eTime)am")
    default:
        print("All trains are running normally")
    }
}

trainInformation(train: oneTrain)

trainInformation(train: fiveTrain)


//==============================================================
//                    Declare values inside enums
//==============================================================

enum ProgrammingLanguage {
    case swift
    case python
    case objectivec
    case go
    case r
    case java
    case javascript
    
// fucntion in the custom types are called methods
    func info() {
        // we need to switch on an instance of ProgrammingLanguage
        switch self {
        case .objectivec:
            print("Last major update was in 2014")
        case .swift:
            print("Swift was introduced in 2014")
        case .java:
            print("Java is used to build android apps")
        default:
            print("Empty")
        }
    }
}
//func salary() {
//    switch self {
//    case .swift:
//        print("2 million")
//    }
//}

//  swiftLamguage is an instance of ProgrammingLnaguage

let swiftLanguage = ProgrammingLanguage.swift
swiftLanguage.info()



//==============================================================
//                    raw values
//==============================================================

enum Day: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    

}

print(Day.monday.rawValue)


//enum fellow {
//    case cohortCycle
//}

// chort fellow does not compile rawValue


//==============================================================
//   inintializing an instance of an enum with a rawValue
//==============================================================

let weekends = Day(rawValue: 10) ?? Day.saturday

print(weekends)

// optional binding to unwrap optional

if let possibleDayoff = Day(rawValue:6) {
    switch possibleDayoff {
    case .saturday:
        print("Great day for BBQ")
    case.sunday:
        print("really want to go swimming")
    default:
        print("just another day")
    }
} else {
    print("Not a valid day of the week")
}
