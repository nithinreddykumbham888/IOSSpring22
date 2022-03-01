//
//  ViewController.swift
//  Kumbham_CurrencyConvneter
//
//  Created by Kumbham,Nithin Reddy on 2/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var inputName: UITextField!
    
    @IBOutlet weak var inputINR: UITextField!
    
    @IBOutlet weak var inputUSD: UITextField!
    
    @IBOutlet weak var finalOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func convetButton(_ sender: Any) {
        var name : String = inputName.text!
        var INR = Double(inputINR.text!)!
        var USD = Double(inputUSD.text!)!
        
        
        var test1 = Double(INR/74.64)
        var test2 = Double(USD*74.64)
        
        var test11 = ((round(test1 * 100))/100.0)
        var test22 = ((round(test2 * 100))/100.0)
        
        
        finalOutput.text = "Hello \(name)\nAmount Rs.\(INR) in USD is \(test11)\nAmount $.\(USD) in INR is \(test22)"
    }
    

}

