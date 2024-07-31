//
//  ColorsTableVC.swift
//  RandomColors
//
//  Created by kanu priya on 04/07/24.
//

import UIKit

class ColorsTableVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var colors: [UIColor] = [] //adding in scope for later use (line 22)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors() //view did load happens; 50 rando colors added
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Ensure tableView is set up correctly
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func addRandomColors(){ //was createRandomColors before
        for _ in 0..<50{
            colors.append(createRandomColors()) //appending, the func(line23) spits out a UIColor
        }
    }
    func createRandomColors() -> UIColor{
        //initialization
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
         return randomColor
    }
    
}
    
    extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return colors.count; //how many numbers of row; colors.count(!50)
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            //guard cell -> allowing early exit; unwrapping cell
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
                return UITableViewCell()
            }
            cell.backgroundColor = colors[indexPath.row]
            return cell //what to show in the row
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "ToColorsDetailVC", sender: nil)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


