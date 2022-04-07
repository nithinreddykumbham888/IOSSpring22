//
//  ViewController.swift
//  TableViewDemo
//
//  Created by student on 4/5/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? DetailTableViewCell
        cell?.label.text = names[indexPath.row]
        cell?.viewImage.image = UIImage(named: names[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var names = ["India","Austrlia","England","Newzealand","Pakistan","Southafrica","Srilanka","Westindes","Bangladesh"]
    
    var namesText = ["This is Indian cricket and I contribute major sector in International Cricket Council as generating income","This is Austrlian cricket and we have big stadiums and the seating capacity is large","This is England Cricket and we are well known for LORDS stadium","This is Newzealand cricket and we have small stadiums","This is Pakistan cricket and we have good pace bowling attack","This is Southafrica cricket and we have good batting and feilding in cricket","This is Srilanka cricket and we are known for famous players and we had won 1 ICC world cup","This is Westindes cricket and we are known for fire power the ball we strike will be in stands","This is Bangladesh cricket we are well known for domestic leagues"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tranistion = segue.identifier
        if tranistion == "detailSegue"{
            let destination = segue.destination as! DisplayViewController
            
            destination.image1 = UIImage(named: names[(tableView.indexPathForSelectedRow?.row)!])
            destination.name = names[(tableView.indexPathForSelectedRow?.row)!]
            destination.text = namesText[(tableView.indexPathForSelectedRow?.row)!]
            
        }
    }
    
    
}

