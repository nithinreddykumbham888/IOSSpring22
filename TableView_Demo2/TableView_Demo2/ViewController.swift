//
//  ViewController.swift
//  TableView_Demo2
//
//  Created by Kumbham,Nithin Reddy on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init (productName: String, productCategory: String){
        self.productName = productName
        self.productCategory = productCategory
    }
 } // end of product class

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        
        // assign data to cell
        cell.textLabel?.text = productsArray[indexPath.row].productName
        
        // return cell
        return cell
    }
    
    var productsArray = [Product]()
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let product1 = Product(productName: "Dell", productCategory: "laptop")
        productsArray.append(product1)
        let product2 = Product(productName: "HP", productCategory: "Desktop")
        productsArray.append(product2)
        let product3 = Product(productName: "Apple", productCategory: "iWatch")
        productsArray.append(product3)
        let product4 = Product(productName: "Lenovo", productCategory: "CPU")
        productsArray.append(product4)
        let product5 = Product(productName: "Acer", productCategory: "laptop")
        productsArray.append(product5)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "detailsSegue"{
            let destination = segue.destination as! DetailsViewController
            
            destination.product = productsArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}

