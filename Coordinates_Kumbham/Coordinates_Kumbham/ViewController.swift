//
//  ViewController.swift
//  Coordinates_Kumbham
//
//  Created by Kumbham,Nithin Reddy on 3/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minX = imageViewOutlet.frame.minX;
        let minY = imageViewOutlet.frame.minY;
        print("(\(minX),\(minY))")
        
        let maxX = imageViewOutlet.frame.maxX;
        let maxY = imageViewOutlet.frame.maxY;
        print("(\(maxX),\(maxY))")
        
        let midX = imageViewOutlet.frame.midX;
        let midY = imageViewOutlet.frame.midY;
        print("(\(midX),\(midY))")
        
        //change the location of image to upper left
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //change the location of image to upper right
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        //change the location of image to bottom right
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        
        //change the location of image to bottom left
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        //change the location of image to center
        imageViewOutlet.frame.origin.x = (207-50)
        imageViewOutlet.frame.origin.y = (448-50)
    }


}

