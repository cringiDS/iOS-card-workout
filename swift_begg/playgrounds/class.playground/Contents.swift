import UIKit

class Developer {
    /*
     //preparing instance of class
    var name:       String
    var jobTitle:   String
    var yearsExp:   Int
    */
    
    //turning them optional for empty class
    var name:       String?
    var jobTitle:   String?
    var yearsExp:   Int?
    
    //init() {}

    // Initializer creation
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }

    func speakName () {
        
        print(name!) //force unwrapping
        
    }
    
}
//let sean = Developer()
let sean = Developer(name: "Sean Allen", jobTitle: "iOS Developer", yearsExp: 5) // or Devloper () <-- NILL for function

sean.name         // Should show "Sean Allen" in the results sidebar
sean.jobTitle     // Should show "iOS Developer" in the results sidebar
sean.yearsExp     // Should show "5" in the results sidebar

