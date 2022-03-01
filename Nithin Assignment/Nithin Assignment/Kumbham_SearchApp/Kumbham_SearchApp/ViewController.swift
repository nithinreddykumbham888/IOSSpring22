//
//  ViewController.swift
//  Kumbham_SearchApp
//
//  Created by student on 2/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textEntered: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    
    @IBOutlet weak var previousButton: UIButton!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    @IBOutlet weak var textOutput: UITextView!
    
    
    @IBOutlet weak var searchOption: UIButton!
    
    var imageNumber = 0;
    var found : Int = 0;
    
    let array = [["AirIndia","Indigo","JetAirways","SpiceJet","Vistara"],
                 ["Barley","Cearls","Corn","Cotton","Paddy"],
                 ["Great","Petra","Machu","Pyramids","Taj"]]
    let airlines_keywords = ["flights","airlines","flight","plane"]
    let crop_keywords = ["crops","agriculture","farming","farmer"]
    let places_keywords = ["places","wonders","monuments","famous places","7 wonders"]
    let topic_array = [["I am Airindia and I run internationally","I am Indigo I am king of domestic service in india","I am Jet airways I do exist previously","I am Spicejet I am a member in Air india","I am Vistara and my owners are from singapore"],
        ["I am Barley crop","I am Cerals crop","I am Corn crop","I am Cotton crop","I am paddy crop"],
         ["I am Great Wall of China","I am Petra and I am from Jordan","I am Machu Picchu and I am from Peru","I am Pyramid and I am from Egypt","I am Taj Mahal and I am from India"]]
    let image01 = ["No-image-found"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultImage.image = UIImage(named: image01[0])
        nextButton.isEnabled = false
        previousButton.isEnabled = false
        searchOption.isEnabled = false
    }
    
    
    @IBAction func searchAction1(_ sender: Any) {
        //print("hello : \(array[0][0].count)")
        var text: String = textEntered.text!
        if(airlines_keywords.contains(text)){
            found = 1;
            resultImage.image = UIImage(named: array[0][0])
            textOutput.text = topic_array[0][0]
            nextButton.isEnabled = true
            previousButton.isEnabled = false
            imageNumber = 0
            //updateFound(found);
        }
        if(crop_keywords.contains(text)){
            found = 2;
            resultImage.image = UIImage(named: array[1][0])
            textOutput.text = topic_array[1][0]
            nextButton.isEnabled = true
            previousButton.isEnabled = false
            imageNumber = 0
            //updateFound(found);
        }
        if(places_keywords.contains(text)){
            found = 3;
            resultImage.image = UIImage(named: array[2][0])
            textOutput.text = topic_array[2][0]
            nextButton.isEnabled = true
            previousButton.isEnabled = false
            imageNumber = 0
            //updateFound(found);
        }
        if(!(airlines_keywords.contains(text) || crop_keywords.contains(text) || places_keywords.contains(text))){
            resultImage.image = UIImage(named: image01[0])
            textOutput.text = ""
            imageNumber = 0;
            previousButton.isEnabled = false
            nextButton.isEnabled = false
            //imageNumber = 0
        }
    }
    
    @IBAction func previousBtn(_ sender: Any) {
        var count = found;
        imageNumber -= 1;
        if(count == 1){
        updateUI(count,imageNumber);
        nextButton.isEnabled = true;
        if(imageNumber == 0){
            previousButton.isEnabled = false;
        }
    }
        if(count == 2){
        updateUI(count,imageNumber);
        nextButton.isEnabled = true;
        if(imageNumber == 0){
            previousButton.isEnabled = false;
        }
    }
        if(count == 3){
        updateUI(count,imageNumber);
        nextButton.isEnabled = true;
        if(imageNumber == 0){
            previousButton.isEnabled = false;
        }
    }
       }
    
    @IBAction func nextBtn(_ sender: Any) {
        var count = found;
        imageNumber += 1;
        if(count == 1 && imageNumber < 5){
        updateUI(count,imageNumber);
        previousButton.isEnabled = true;
        if(imageNumber == 4){
            nextButton.isEnabled = false;
            //imageNumber = 0;
        }
         }
        if(count == 2 && imageNumber < 5){
        updateUI(count,imageNumber);
        previousButton.isEnabled = true;
        if(imageNumber == 4){
            nextButton.isEnabled = false;
            //imageNumber = 0;
        }
         }
        if(count == 3 && imageNumber < 5){
        updateUI(count,imageNumber);
        previousButton.isEnabled = true;
        if(imageNumber == 4){
            nextButton.isEnabled = false;
            //imageNumber = 0;
        }
         }
    }
    
    @IBAction func enterLabel(_ sender: Any) {
        var textEnteredr = textEntered.text!
        textEntered.text = textEnteredr
        if(textEnteredr.isEmpty){
            searchOption.isEnabled = false
        }
        else{
            searchOption.isEnabled = true
        }
    }
    
    @IBAction func resetButton(_ sender: Any) {
        searchOption.isEnabled = false
        textEntered.text = ""
        nextButton.isEnabled = false
        previousButton.isEnabled = false
        textOutput.text = ""
        imageNumber = 0;
        found = 0;
    }
    
    func updateUI(_ cou : Int,_ imageNum : Int){
        if(cou == 1){
            resultImage.image = UIImage(named: array[0][imageNum])
            textOutput.text = topic_array[0][imageNum]
        }
        if(cou == 2){
            resultImage.image = UIImage(named: array[1][imageNum])
            textOutput.text = topic_array[1][imageNum]
        }
        if(cou == 3){
            resultImage.image = UIImage(named: array[2][imageNum])
            textOutput.text = topic_array[2][imageNum]
        }
    }
}

