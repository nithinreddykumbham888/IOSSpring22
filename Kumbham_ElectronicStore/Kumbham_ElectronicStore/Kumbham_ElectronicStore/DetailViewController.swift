//
//  DetailViewController.swift
//  Kumbham_ElectronicStore
//
//  Created by Kumbham,Nithin Reddy on 4/26/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var productName: UILabel!
    
    @IBOutlet weak var productPrice: UILabel!
    
    var productName1 = ""
    var productPrice1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productName.text = productName1;
        productPrice.text = productPrice1;
        // Do any additional setup after loading the view.
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
