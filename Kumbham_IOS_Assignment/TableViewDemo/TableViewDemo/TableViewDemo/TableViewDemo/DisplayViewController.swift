//
//  DisplayViewController.swift
//  TableViewDemo
//
//  Created by student on 4/6/22.
//

import UIKit

class DisplayViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var viewImage: UIImageView!
    
    @IBOutlet weak var displayText: UITextView!
    
    
    var image1 = UIImage(named: "")
    var name = ""
    var text = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "This is \(name) cricket"
        viewImage.image = image1
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onClickAction(_ sender: Any) {
        displayText.text = text
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
