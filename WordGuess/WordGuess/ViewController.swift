//
//  ViewController.swift
//  WordGuess
//
//  Created by Kumbham,Nithin Reddy on 2/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var letterEntered: UITextField!
    
    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet weak var playAgain: UIButton!
    
    
    var words = [["Cricket", "Team of 11 members"],["Dog","Most loved animal"],["Car","Four wheeler"],["Iron Man","Most loved comic character"]]
    var count = 0;
    var word = "";
    var letterGuessed = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkButton.isEnabled = false; // checkbutton disabled initially
        
        word = words[count][0]; // Getting first word from array
        
        displayLabel.text = ""
        
        underscoreCount(); //populating underscores equal to words
        
        hintLabel.text = words[count][1]; // Getting first hint from array
        
        statusLabel.text = "" // Clear the statuslabel first
        
    }
    
    
    @IBAction func checkButtonClicked(_ sender: Any) {
        var letter = letterEntered.text! // get letter from textfeild
        
        letterGuessed = letterGuessed + letter;
        
        var revealWord = "";
        for l in word{
            if letterGuessed.contains(l){
                revealWord += "\(l)";
            }
            else{
                revealWord += "_"
            }
        }
        
        statusLabel.text = revealWord // Assigning the word to displaylabel after a guess
        letterEntered.text = ""
        
        if(statusLabel.text!.contains("_") == false){ // word guessed correctly play is enabled and check is disabled
            playAgain.isHidden = false
            checkButton.isEnabled = false
        }
        checkButton.isEnabled = false
    }
    
    
    @IBAction func playAgainClicked(_ sender: UIButton) {
        playAgain.isHidden = true //Hide the play button innitially
        letterGuessed = "" //clear the label
        count += 1
        
        if count == words.count{
            displayLabel.text = "Congrats tou are done with the app!"
        }
    }
    
}

