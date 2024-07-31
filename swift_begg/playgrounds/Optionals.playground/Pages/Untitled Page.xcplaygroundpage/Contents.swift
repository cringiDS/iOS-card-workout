import UIKit

//unwrapping optionals

var ages: [Int] = [12, 34, 35, 64, 56]

ages.sort()

//if let to unwrap optionals
/*if let OldestAge = ages.last { // .last to check the presence of elements in array
    //scope for accessing OldestAge if elements are present in the array
    print("The oldest age is \(OldestAge)")
} else {
    print("There is no member with Oldest Age")
}
*/

/*
 //nil coalescing
 let OldesAge = ages.last ?? 888
 */

/*
//Guard Statement

func getOldAge() {
    
    guard let OldesAge = ages.last else {return}
    print("\(OldesAge) is the oldest Age.")
    
}

getOldAge()
*/
/*
 //force unwrap
 let OldestAge = ages.last!
*/
