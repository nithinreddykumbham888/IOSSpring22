//
//  DetailsViewController.swift
//  TableView_Demo2
//
//  Created by Kumbham,Nithin Reddy on 3/29/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var displayLabelController: UILabel!
    
    var product:Product?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayLabelController.text = "The brand is \((product?.productName)!) and the product is \((product?.productCategory)!)"
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
