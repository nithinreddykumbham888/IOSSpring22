//
//  ViewController.swift
//  Kumbham_GroceryApp
//
//  Created by Kumbham,Nithin Reddy on 4/5/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = grocerySectionstableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        
        cell.textLabel?.text = productArray[indexPath.row].section
        
        return cell
    }


    
    @IBOutlet weak var grocerySectionstableView: UITableView!
    
    var productFound = Products()
    
    var productArray = productsArray;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        grocerySectionstableView.delegate = self
        grocerySectionstableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "itemsSegue"{
            let destination = segue.destination as! GroceryItemsViewController
            destination.productArray = productArray[(grocerySectionstableView.indexPathForSelectedRow!.row)].items_Array
            destination.titleName = productArray[(grocerySectionstableView.indexPathForSelectedRow!.row)].section
        }
    }


}

