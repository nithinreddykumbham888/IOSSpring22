//
//  ViewController.swift
//  DiscountApp
//
//  Created by Kumbham,Nithin Reddy on 2/15/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amount: UITextField!
    
    
    @IBOutlet weak var discount: UITextField!
    
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func outputDisplay(_ sender: UIButton) {
        
        var amount = Double(amount.text!)!
        var discount = Double(discount.text!)!
        var output1 = Double(discount/100)
        var output2 = output1 * amount
        var finalOutput = Double(amount - output2)
        output.text = "Price after discount : $\(finalOutput)"
    }
    
    
    @IBAction func reset(_ sender: Any) {
        amount.text = ""
        discount.text = ""
        output.text = ""
    }
    
}

