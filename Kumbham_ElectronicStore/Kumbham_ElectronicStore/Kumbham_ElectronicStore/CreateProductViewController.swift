//
//  CreateProductViewController.swift
//  Kumbham_ElectronicStore
//
//  Created by Kumbham,Nithin Reddy on 4/26/22.
//

import UIKit

class CreateProductViewController: UIViewController {
    
    @IBOutlet weak var createProduct: UITextField!
    
    
    @IBOutlet weak var createPrice: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createButton(_ sender: Any) {
        var pName = createProduct.text!
        var pPrice = createPrice.text!
        
        var newProduct = [pName,pPrice]
        Electronic.append(newProduct)
        
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
