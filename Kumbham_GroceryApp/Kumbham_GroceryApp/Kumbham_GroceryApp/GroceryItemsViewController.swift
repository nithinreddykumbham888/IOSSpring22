//
//  GroceryItemsViewController.swift
//  Kumbham_GroceryApp
//
//  Created by Kumbham,Nithin Reddy on 4/5/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        
        cell.textLabel?.text = productArray[indexPath.row].itemName
        
        return cell
    }


    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    var productArray:[GroceryItem] = []
    
    var titleName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleName
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "itemInfoSegue"{
            let destination = segue.destination as! ItemsInfoViewController
            destination.titleName = productArray[(groceryItemsTableView.indexPathForSelectedRow!.row)].itemName
            destination.itemInfo = productArray[(groceryItemsTableView.indexPathForSelectedRow!.row)].itemInfo
            destination.imageDisplay = UIImage(named:productArray[(groceryItemsTableView.indexPathForSelectedRow!.row)].itemImage)
        }
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
