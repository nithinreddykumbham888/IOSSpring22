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
    var contacts = NSDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        fetchData()
    }
    
    func fetchData(){
        //create reference
//        let databaseRef = Database.database().reference()
//
//        databaseRef.observeSingleEvent(of: .value) {
//            snapshot in
//            let contacts = snapshot.value as! NSDictionary
//
//            self.contactName = contacts.allKeys as! [String]
//
//            self.tableViewOutlet.reloadData()
//        }
        
        //Create the reference
        let databaseRef = Database.database().reference()
        
        //Get the data using the method observeSingleEvent
        databaseRef.observeSingleEvent(of: .value) { snapshot in
            self.contacts = snapshot.value as! NSDictionary
            self.contactName = self.contacts.allKeys as! [String]
            self.tableViewOutlet.reloadData();
            
            print(self.contacts)
            
        }
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "infoDisplay"{
            let destination = segue.destination as! ResultViewController
            let contactClicked = contactName[(tableViewOutlet.indexPathForSelectedRow?.row)!]
            for (key, value) in self.contacts{
                if key as! String == contactClicked{
                    for (key1, value1) in value as! [String:Any]{
                        if key1 == "Email"{
                            destination.email = value1 as! String
                        }
                        else if key1 == "PhoneNum"{
                            destination.phoneNumber = value1 as! Int
                        }
                    }
                }
                print(key)//String
                print(value)//Dictionary
            }
            
           
            
            
        }
    }

}

