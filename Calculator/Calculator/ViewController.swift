//
//  ViewController.swift
//  Calculator
//
//  Created by Kumbham,Nithin Reddy on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var operand1 = -1.1;
    var operand2 = -1.1;
    var calcOperator = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func button6(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "6"
        if operand1 == -1.1{
            operand1 = 6
        }
        else{
            operand2 = 6
        }
    }
    
    
    @IBAction func button9(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "9"
        if operand2 == -1.1{
            operand2 = 9
        }
        else{
            operand1 = 9
        }
    }
    
    
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "+"
        if calcOperator == " "{
            calcOperator = "+"
        }
    }
    
    
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "="
        if calcOperator == "+"{
            resultLabel.text = "\(operand1+operand2)"
        }
    }
    
    
    @IBAction func buttonReset(_ sender: UIButton) {
        resultLabel.text = " "
    }
    
}

