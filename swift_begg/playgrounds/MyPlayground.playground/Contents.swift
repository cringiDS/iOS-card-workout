import UIKit

// learning enums
enum Direction {
    case East, West, North, South
}

/*func giveSeanDir(to go: Direction) {
    if go == .East {
        print("Keep going straight")
    } else if go == .West {
        print("Turn Left")
    } else if go == .North {
        print("Go backwards")
    } else if go == .South {
        print("Turn Right")
    }
}*/

func giveSeanDir(to go: Direction){
    switch go {
    case .North:
        //code
        print("Go Backwards")
    case .East:
        print("Keep going straight")
    case .West:
        print("Turn Left")
    case .South:
        print("Turn Right")
    }
}
// Function call in the global scope
giveSeanDir(to: .North)
