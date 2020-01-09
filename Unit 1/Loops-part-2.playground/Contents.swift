import UIKit



//=======================================================================
//                                     Loops 2
//=======================================================================

//var str = "Hello, playground"

//=======================================================================
//                                Review of loops
//=======================================================================

var str = "Hello, playground"

for _ in  1...5 {
    print(str)
}

for num in 1...5 {
    print(num)
}

//=======================================================================
//                             while loop
//=======================================================================

var seconds = 10
while seconds >= 0 { // body, scope, block, refers to what's between curly bracket and the close curly bracket
    print(seconds)
    seconds -= 1 // decrements the seconds by 1
}

//=======================================================================
//                            repeat while loop
//=======================================================================

var isPlaying = false
var currentLevel = 1
let finalLevel = 10
repeat {
    if isPlaying == true {
        print("playing level \(currentLevel)")
        currentLevel += 1
      if currentLevel == finalLevel {
          print ("I will definetely recommend this game")
          isPlaying = false
      }
        
    } else {
        print("Trying out pursuit arcade for the first time")
        isPlaying = true // ina  macOS command line app you can prompt the user to continue or not, this will set isPlaying to true or false
    }
} while isPlaying == true

//=======================================================================
//                          nested loops
//=======================================================================

for i in 1...5 {
    for j in  1...5{
        print("\(i) * \(j) is \(i * j)")
    }
}

//=======================================================================
//                          labels in loops
//=======================================================================

let product = 50  //

outerloop: for i in 1...10 {
    innerloop: for j in 1...10 {
    if i * j == product {
        print("product was found by multiplying \(i) * \(j))")
        continue outerloop
    } else {
        print ("keep searching...")
    }
}
}


//=======================================================================
//                          labels in loops
//=======================================================================
