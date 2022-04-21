//
//  ResultViewController.swift
//  ContactListDemoFirebase
//
//  Created by Kumbham,Nithin Reddy on 4/21/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var email = ""
    var phoneNumber = 0
    
    
    @IBOutlet weak var emailOutlet: UILabel!
    
    @IBOutlet weak var phoneOutlet: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailOutlet.text = email
        phoneOutlet.text = "\(phoneNumber)"
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
