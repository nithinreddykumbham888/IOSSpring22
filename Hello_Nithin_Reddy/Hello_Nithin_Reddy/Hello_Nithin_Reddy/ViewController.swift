//
//  ViewController.swift
//  Hello_Nithin_Reddy
//
//  Created by student on 1/23/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Marks: UITextField!
    
    @IBOutlet weak var Output: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Operation(_ sender: Any) {
        var Name = Name.text!
        var Marks1 = Marks.text!
        var x=Int(Marks1)!
        let output = "Hello, \(Name), you secured a marks of  \(x * 9)"
        Output.text = output
        
    }
    
}

