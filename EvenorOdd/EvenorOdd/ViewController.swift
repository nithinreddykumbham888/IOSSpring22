//
//  ViewController.swift
//  EvenorOdd
//
//  Created by Kumbham,Nithin Reddy on 2/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputEntered: UITextField!
    
    
    @IBOutlet weak var outputDisplayed: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func operation(_ sender: Any) {
        
        var input = inputEntered.text!
        var input1 = Int(input)
        if(input1! % 2 == 0){
        outputDisplayed.text = "\(input1!) is even Number"
    }
        else{
            outputDisplayed.text = "\(input1!) is odd number"
        }
    }

}

