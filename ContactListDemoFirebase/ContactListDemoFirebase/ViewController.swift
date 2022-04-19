//
//  ViewController.swift
//  ContactListDemoFirebase
//
//  Created by Kumbham,Nithin Reddy on 4/19/22.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contactName[indexPath.row]
        return cell
    }
    
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var contactName:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        fetchData()
    }
    
    func fetchData(){
        //create reference
        let databaseRef = Database.database().reference()
        
        databaseRef.observeSingleEvent(of: .value) {
            snapshot in
            let contacts = snapshot.value as! NSDictionary
            
            self.contactName = contacts.allKeys as! [String]
            
            self.tableViewOutlet.reloadData()
        }
    }


}

