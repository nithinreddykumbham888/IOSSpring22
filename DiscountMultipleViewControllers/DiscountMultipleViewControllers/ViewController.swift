//
//  ViewController.swift
//  DiscountMultipleViewControllers
//
//  Created by Kumbham,Nithin Reddy on 3/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var amountOutlet: UITextField!
    
    @IBOutlet weak var discountOutlet: UITextField!
    
    var priceAfterDiscount = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calcDiscountButtonClicked(_ sender: Any) {
        var amount = Double(amountOutlet.text!)!
                var discount = Double(discountOutlet.text!)!
                var output1 = Double(discount/100)
                var output2 = output1 * amount
                var finalOutput = Double(amount - output2)
                priceAfterDiscount = finalOutput
                //output.text = "Price after discount : $\(finalOutput)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transistion = segue.identifier
        if transistion == "resultSegue"{
            var destination = segue.destination as! ResultViewController
            
            destination.amount = amountOutlet.text!
            destination.discountRate = discountOutlet.text!
            destination.priceAfterDiscount = String(priceAfterDiscount)
        }
    }
    
}

