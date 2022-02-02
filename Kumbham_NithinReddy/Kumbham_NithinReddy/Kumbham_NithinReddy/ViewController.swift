//
//  ViewController.swift
//  Kumbham_NithinReddy
//
//  Created by student on 2/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    
    
    @IBOutlet weak var detailDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickSubmit(_ sender: UIButton) {
        var firstName = firstNameTextField.text!
        var lastName = lastNameTextField.text!
        var size = firstName.count
        var size1 = lastName.count
        if(size > 0 && size1 > 0){
        detailDisplay.text = "Details"
        let output = "Full Name : \(lastName),\(firstName)"
        fullNameLabel.text = output
        
        let firstChar = lastName[lastName.startIndex]
        let secondChar = firstName[firstName.startIndex]
        let output1 = String(firstChar) + String(secondChar)
        initialsLabel.text = "Intials : \(output1)"
        }
    }
    
    
    @IBAction func onClickReset(_ sender: UIButton) {
        
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        detailDisplay.text = ""
        firstNameTextField.becomeFirstResponder()
        
    }
    

}

