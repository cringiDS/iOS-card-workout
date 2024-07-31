
//creating a ranking system

import UIKit

let matchmakingRank = 4000

//creating function to determine rank
func determinePlayerLeague (from /*argument label*/ rank /*parameter label --> scope*/: Int /*rank's Data Type*/ ){
    switch rank{
    case 0:
        print("Play game and determine your League")
    case 1..<50:
        print("You are in Bronze League")
    case 50..<1000:
        print("You are in Silver League")
    case 1000..<3000:
        print("You are in Gold League")
    case 3000..<4001:
        print("You are in Platinum League")
    default:
        print("You are too Good ")
    }
}

determinePlayerLeague(from: matchmakingRank)

