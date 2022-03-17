//
//  ViewController.swift
//  Animations
//
//  Created by Kumbham,Nithin Reddy on 3/17/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    @IBOutlet weak var shakeMeOutlet: UIButton!
    

    @IBOutlet weak var showOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageOutlet.frame.origin.x = view.frame.maxX;
    }
    
    override func viewDidAppear(_ animated: Bool) {
        imageOutlet.frame.origin.x = view.frame.maxX;
        
        
    }

   
    @IBAction func happyButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func sadButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func angryButtonClicked(_ sender: UIButton) {
    }
    
    @IBAction func shakeMeButtonClicked(_ sender: UIButton) {
        var w = imageOutlet.frame.width
        w += 40
        
        var h = imageOutlet.frame.height
        h += 40
        
        var x = imageOutlet.frame.origin.x
        x -= 20
        
        var y = imageOutlet.frame.origin.y
        y -= 20
        
        var largeFrame = CGRect(x: x, y:y, width: w, height: h)
        
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0, options: <#T##UIView.AnimationOptions#>, animations: <#T##() -> Void#>, completion: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
    }
    
    @IBAction func showButtonClicked(_ sender: UIButton) {
    }
    
    
    
}

