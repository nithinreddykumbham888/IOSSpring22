//
//  GrocerySections.swift
//  Kumbham_GroceryApp
//
//  Created by Kumbham,Nithin Reddy on 4/5/22.
//

import Foundation

struct Products{
    var section = ""
    var items_Array:[GroceryItem] = []
}

struct GroceryItem{
    var itemName = ""
    var itemImage = ""
    var itemInfo = ""
}

let Product1 = Products(section: "vegetables",
                        items_Array: [
                        GroceryItem(itemName: "Green Pepper", itemImage: "greenpepper", itemInfo: "")] )
