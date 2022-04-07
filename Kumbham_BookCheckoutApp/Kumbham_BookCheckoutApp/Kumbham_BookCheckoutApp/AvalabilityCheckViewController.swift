//
//  ViewController.swift
//  Kumbham_BookCheckoutApp
//
//  Created by Kumbham,Nithin Reddy on 4/7/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var bookID: UITextField!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var bookStatus: UILabel!
    
    @IBOutlet weak var checkOut1: UIButton!
    
    var bookFound = Book()
    var isBookFound = false
    
    var booksArrayInput = booksArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkOut1.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func checkAvailability(_ sender: Any) {
        //let enteredID = username.text!
        let bookIDInput = bookID.text!
                for book in booksArrayInput {
                    if bookIDInput == book.bookId{
                        bookFound = book
                        isBookFound = true
                        displayImage.image = UIImage(named: book.bookImage)
                        bookStatus.text = "Book with ID \(book.bookId) is found!"
                        checkOut1.isHidden = false
                    }
//                   if bookIDInput != book.bookId{
//                        bookStatus.text = "Book Not Found!"
//                        displayImage.image = nil
//                    }
                }
//        bookStatus.text = "Book Not Found!"
//                               displayImage.image = nil
    }
    
    @IBAction func checkOut(_ sender: Any) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                let transition = segue.identifier
                if transition == "checkoutSegue"{
                    let destination = segue.destination as! CheckoutConfirmationViewController
                    if isBookFound {
                        destination.bookObj = bookFound
                        destination.name = username.text!
                    }
                    
                    
                }
            }
    }
    
    
}

