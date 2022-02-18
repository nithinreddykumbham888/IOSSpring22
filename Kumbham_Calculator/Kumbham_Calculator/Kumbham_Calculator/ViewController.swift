//
//  ViewController.swift
//  Kumbham_Calculator
//
//  Created by student on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayOutput: UILabel!
    var operand1 = "";
    var number1 = "";
    var number2 = "";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        displayOutput.text = ""
        number1 = ""
        number2 = ""
        operand1 = ""
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        var in1 = String(number1)
        var in2 = String(number2)
        var in3 = String(operand1)
        
        
    }
    
    @IBAction func buttonInterchange(_ sender: UIButton) {
        var ope = operand1
        if(ope == "+"){
            operand1 = "-"
        }
        if(ope == "-"){
            operand1 = "+"
        }
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "/"
        if operand1 == ""{
            operand1 = "/"
        }
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "*"
        if operand1 == ""{
            operand1 = "*"
        }
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "-"
        if operand1 == ""{
            operand1 = "-"
        }
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "+"
        if operand1 == ""{
            operand1 = "+"
        }
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "="
        if operand1 == "+"{
            var number11 = (Double)(number1)!
            var number22 = (Double)(number2)!
            var output = number11 + number22
            var output1 = String(output)
            var output1arr = output1.components(separatedBy: ".")
            var first = output1arr[0]
            var last = output1arr[1]
            if(last == "0"){
                displayOutput.text = "\((Int)(output))"
            }
            else{
                displayOutput.text = "\((output1))"
            }
        }
        if operand1 == "-"{
            var number11 = (Double)(number1)!
            var number22 = (Double)(number2)!
            var output = number11 - number22
            var output1 = String(output)
            var output1arr = output1.components(separatedBy: ".")
            var first = output1arr[0]
            var last = output1arr[1]
            if(last == "0"){
                displayOutput.text = "\((Int)(output))"
            }
            else{
                displayOutput.text = "\((output1))"
            }
        }
        if operand1 == "*"{
            var number11 = (Double)(number1)!
            var number22 = (Double)(number2)!
            var output = number11 * number22
            var output1 = String(output)
            var output1arr = output1.components(separatedBy: ".")
            var first = output1arr[0]
            var last = output1arr[1]
            if(last == "0"){
                displayOutput.text = "\((Int)(output))"
            }
            else{
                displayOutput.text = "\((output1))"
            }
        }
        if operand1 == "/"{
            var number11 = (Double)(number1)!
            var number22 = (Double)(number2)!
            var output = number11 / number22
            if(String(output) == "inf"){
                displayOutput.text = "Error"
            }
            else{
            displayOutput.text = "\((round(output * 100000))/100000.0)"
            }
        }
        if operand1 == "%"{
            var number11 = (Double)(number1)!
            var number22 = (Double)(number2)!
            var output = Double(number11).truncatingRemainder(dividingBy: number22)
            displayOutput.text = "\((round(output * 10))/10.0)"
        }
    }
    
    @IBAction func buttonModulo(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "%"
        if operand1 == ""{
            operand1 = "%"
        }
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "."
        if(operand1 == ""){
        number1 = number1 + "."
        }
        else{
            number2 = number2 + "."
        }
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "0"
        if(operand1 == ""){
        number1 = number1 + "0"
        }
        else{
            number2 += "0"
        }
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "1"
        if(operand1 == ""){
        number1 = number1 + "1"
        }
        else{
            number2 += "1"
        }
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "2"
        if(operand1 == ""){
        number1 = number1 + "2"
        }
        else{
            number2 += "2"
        }
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "3"
        if(operand1 == ""){
        number1 = number1 + "3"
        }
        else{
            number2 += "3"
        }
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "4"
        if(operand1 == ""){
        number1 = number1 + "4"
        }
        else{
            number2 += "4"
        }
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "5"
        if(operand1 == ""){
        number1 = number1 + "5"
        }
        else{
            number2 += "5"
        }
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "6"
        if(operand1 == ""){
        number1 = number1 + "6"
        }
        else{
            number2 += "6"
        }
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "7"
        if(operand1 == ""){
        number1 = number1 + "7"
        }
        else{
            number2 += "7"
        }
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "8"
        if(operand1 == ""){
        number1 = number1 + "8"
        }
        else{
            number2 += "8"
        }
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        displayOutput.text = displayOutput.text! + "9"
        if(operand1 == ""){
        number1 = number1 + "9"
        }
        else{
            number2 += "9"
        }
    }

}

