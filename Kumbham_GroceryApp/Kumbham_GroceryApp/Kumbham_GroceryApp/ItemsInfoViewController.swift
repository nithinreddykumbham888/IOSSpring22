//
//  ItemsInfoViewController.swift
//  Kumbham_GroceryApp
//
//  Created by Kumbham,Nithin Reddy on 4/5/22.
//

import UIKit

class ItemsInfoViewController: UIViewController {
    
    
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    
        
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    var titleName = ""
    var itemInfo = ""
    var imageDisplay = UIImage(named: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemImageViewOutlet.image = imageDisplay
        self.title = titleName
        //print(itemInfo)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showItemInfoAction(_ sender: Any) {
        itemInfoOutlet.text = itemInfo
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
