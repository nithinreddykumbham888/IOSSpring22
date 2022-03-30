//
//  ViewController.swift
//  Kumbham_WordGuess
//
//  Created by student on 3/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsMissedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    
    @IBOutlet weak var playAgainButtonPressed: UIButton!
    
    @IBOutlet weak var guessLetterButtonPressed: UIButton!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var words = [["SUBMARINE","Underwater ship"],
                 ["DOG","Most loved animal"],
                 ["AVATAR","Most grossed movie till date"],
                 ["SOCCER","Game played with only legs"],
                 ["GOOGLE","Top search engine"]]
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    var maxNumOfWrongGuesses = 10;
    var count1 = 0;
    var count2 = 5;
    var count3 = -1;
    var count4 = 0;
    var count5 = 0;
    
    var wordsImages = ["submarine","dog","avatar","soccer","google"]
    var tryAgain = ["try","done"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        guessLetterButtonPressed.isEnabled = false;
        playAgainButtonPressed.isHidden = true;
        wordsGuessedLabel.text = wordsGuessedLabel.text! + "0"
        wordsMissedLabel.text = wordsMissedLabel.text! + "0"
        wordsRemainingLabel.text = wordsRemainingLabel.text! + "5"
        totalWordsLabel.text = totalWordsLabel.text! + "5"
        word = words[count][0]
        userGuessLabel.text = ""
        updateUnderscores();
        hintLabel.text = hintLabel.text! + words[count][1]
        
    }

    @IBAction func guessLetterButtonPressed(_ sender: Any) {
        var letter = guessLetterField.text!
        lettersGuessed = lettersGuessed + letter
        var revealedWord = ""
        count4 = count4 + 1;
        
        if(count4 <= maxNumOfWrongGuesses){
        for l in word{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else{
                revealedWord += "_"
                
            }
        }
            userGuessLabel.text = revealedWord
            guessLetterField.text = ""
            guessCountLabel.text = "You have made \(Int(count4)) Guesses"
          }
        else{
            guessCountLabel.text = "You are out of all guesses. Try again?"
            guessLetterField.text = ""
            count = -1
            playAgainButtonPressed.isHidden = false
            displayImage.image = UIImage(named: tryAgain[0])
            count1 = 0;
            count2 = 5;
            count3 = -1;
            count5 = count5 + 1;
            wordsGuessedLabel.text = "Total number of words guessed successfully : \(Int(count1))"
            wordsRemainingLabel.text = "Total number of words remaining in game : \(Int(count2))"
            wordsMissedLabel.text = "Total number of words guessed wrongly : \(Int(count5))"
//            word = words[count][0]
//            hintLabel.text = hintLabel.text! + words[count][1]
        }
        
        
        
        if userGuessLabel.text!.contains("_") == false{
            guessCountLabel.text = "You won! It took you \(Int(count4)) attempts to guess the word!"
            count1 = count1+1;
            count2 = count2-1;
            count3 = count3+1;
            displayImage.image = UIImage(named: wordsImages[count3])
//            UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50,animations: { [self] in
//                displayImage.image = UIImage(named: wordsImages[self.count3])
//            })
            if (count1<=5){
            wordsGuessedLabel.text = "Total number of words guessed successfully : \(Int(count1))"
            }
            if (count2>=0){
                wordsRemainingLabel.text = "Total number of words remaining in game : \(Int(count2))"
            }
            playAgainButtonPressed.isHidden = false
            guessLetterButtonPressed.isEnabled = false
        }
        guessLetterButtonPressed.isEnabled = false
    }
    
    @IBAction func playAgainButtonPressed(_ sender: Any) {
        count4 = 0;
        guessCountLabel.text = "You have made \(Int(count4)) Guesses"
        playAgainButtonPressed.isHidden = true
        lettersGuessed = ""
        count += 1
        displayImage.image = nil
        
        if count == words.count{
            guessCountLabel.text = "Congratulations, You are done, Please start over again"
            userGuessLabel.text = ""
            hintLabel.text = ""
            count = -1
            playAgainButtonPressed.isHidden = false
            displayImage.image = UIImage(named: tryAgain[1])
            count1 = 0;
            count2 = 5;
            count3 = -1;
            count5 = 0;
            wordsGuessedLabel.text = "Total number of words guessed successfully : \(Int(count1))"
            wordsRemainingLabel.text = "Total number of words remaining in game : \(Int(count2))"
            wordsMissedLabel.text = "Total number of words guessed wrongly : \(Int(count5))"
        }
        else{
            word = words[count][0]
//            var hello = hintLabel.text
            hintLabel.text! = "Hint: " + words[count][1]
            guessLetterButtonPressed.isEnabled = true
            
            userGuessLabel.text = ""
            updateUnderscores();
        }
    }
    
    @IBAction func enterLabelChanged(_ sender: Any) {
        var textEntered = guessLetterField.text!
        textEntered = String(textEntered.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEntered
        
        if textEntered.isEmpty{
            guessLetterButtonPressed.isEnabled = false
        }
        else{
            guessLetterButtonPressed.isEnabled = true
        }
    }
    
    func updateUnderscores(){
        for letter in word{
            userGuessLabel.text! += "_"
        }
    }
}

