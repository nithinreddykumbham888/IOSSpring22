//
//  CheckoutConfirmationViewController.swift
//  Kumbham_BookCheckoutApp
//
//  Created by Kumbham,Nithin Reddy on 4/7/22.
//

import UIKit

class CheckoutConfirmationViewController: UIViewController {
    
    
    @IBOutlet weak var displayText: UILabel!
    
    @IBOutlet weak var displayTitle: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    var bookObj = Book()
    var outputText = ""
    var outputTitle = ""
    var image1 = UIImage(named: "")
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayText.text = "\(name) your checkout is succesfull!!!"
        displayTitle.text = bookObj.bookName
        displayImage.image = UIImage(named: bookObj.bookImage)
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
