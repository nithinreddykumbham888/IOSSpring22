//
//  ViewController.swift
//  Kumbham_ElectronicStore
//
//  Created by Kumbham,Nithin Reddy on 4/26/22.
//

import UIKit

class ElectronicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Electronic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = displayTableView.dequeueReusableCell(withIdentifier: "displayCell", for: indexPath)
        cell.textLabel?.text = Electronic[indexPath.row][0]
                return cell
    }
    
    
    @IBOutlet weak var displayTableView: UITableView!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        displayTableView.delegate = self
        displayTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        displayTableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            
            if segue.identifier == "detailViewSegue"{
                let destination = segue.destination as! DetailViewController
                destination.productName1 = Electronic[displayTableView.indexPathForSelectedRow!.row][0]
                destination.productPrice1 = Electronic[displayTableView.indexPathForSelectedRow!.row][1]
            }
        
        if segue.identifier == "createProductSegue"{
            _ = navigationController?.popToRootViewController(animated: true)
         }
        }

}

