//
//  ViewController.swift
//  MultiplesOfThree
//
//  Created by Kumbham,Nithin Reddy on 2/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputEntered: UITextField!
    
    
    @IBOutlet weak var outputReturned: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func onClickPerformed(_ sender: Any) {
        var input = inputEntered.text!
        var input1 = Int(input)
        if(input1! % 3 == 0){
            outputReturned.text = "\(input1!) is a multiple of 3"
        }
        else{
            outputReturned.text = "\(input1!) is not a multiple of 3"
        }
    }
    

}

