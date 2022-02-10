//
//  ViewController.swift
//  CourseDisplay
//
//  Created by Kumbham,Nithin Reddy on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var courseNumber: UILabel!
    
    
    @IBOutlet weak var courseTitle: UILabel!
    
    
    @IBOutlet weak var semisteerOffered: UILabel!
    
    
    @IBOutlet weak var previous: UIButton!
    
    

    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "2235", "Security", "Fall 2022"],["img02", "2245", "Network", "Spring 2022"],["img03", "2275", "Database", "Fall 2022"]]
    

    var imageNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //on the first page details of course number and all has been displayed and previous button is disbaled.
        displayImage.image = UIImage(named: courses[0][0])
        courseNumber.text = courses[0][1]
        courseTitle.text = courses[0][2]
        semisteerOffered.text = courses[0][3]
    }
    
    
    
    @IBAction func previousClicked(_ sender: Any) {
        //next is obtained by incrementing image number
        imageNumber -= 1
        updateUI(imageNumber)
        //previous button enabled
        nextButton.isEnabled = true
        // end of array, next disabled
        if(imageNumber == 0){
            previous.isEnabled = false
        }
    }
    
    
    @IBAction func nextClicked(_ sender: Any) {
        //next is obtained by incrementing image number
        imageNumber += 1
        updateUI(imageNumber)
        //previous button enabled
        previous.isEnabled = true
        // end of array, next disabled
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNum:Int){
        displayImage.image = UIImage(named: courses[imageNum][0])
        courseNumber.text = courses[imageNum][1]
        courseTitle.text = courses[imageNum][2]
        semisteerOffered.text = courses[imageNum][3]
    }
    
}

