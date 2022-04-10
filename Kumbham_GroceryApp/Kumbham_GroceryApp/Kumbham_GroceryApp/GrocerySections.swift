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

let Product1 = Products(section: "Vegetables",
                        items_Array: [
                        GroceryItem(itemName: "Green Pepper", itemImage: "Greenpepper", itemInfo: "I am also called as Capscium in other countries. I act as stuffing to many starters and the curry which is prepared with me is the best source of Nutrients like antioxidants and fiber, I am good for heart and eyes"),
                        GroceryItem(itemName: "Tomatoes", itemImage: "Tomatoes", itemInfo: "I act as main part in every dish prepared as the juice extracted from me in curries adds flavours to every dish and I am rich source for antioxidant and can reduce high risk of cancer and heart diseases"),
                        GroceryItem(itemName: "Potato", itemImage: "Potato", itemInfo: "I act as good source for fiber which helps to loose weight and maintain blood sugar levels , I was consumed in many parts of the world and with me many flavours of chipps emerged in market"),
                        GroceryItem(itemName: "Lettuce", itemImage: "Lettuce", itemInfo: "I act as rich source for vitamin K which helps to strengthen bones and reduce risk of bone facture, I act as stuffing in many dishes like sub's i.e breads which was consumed in many parts of the world "),
                        GroceryItem(itemName: "Cauliflower", itemImage: "Cauliflower", itemInfo: "I act as rich source for antioxidants. Cauliflower is a heart friendly vegetable thanks to sulforaphane. I also support hormonal balance and immune system. I act as staters")])

let Product2 = Products(section: "Meat & SeaFood",
                        items_Array:[
                            GroceryItem(itemName: "Beef & Lamb", itemImage:"Beef",itemInfo: "I am rich source of protein and helps to maintain muscle mass, I am also rich in minerals and I help prevent IRON deficiency. I am full of vitamins. I am consumed in many parts of the world"),
                             GroceryItem(itemName: "Chicken", itemImage:"Chicken", itemInfo: "I am easily cooked and I was consumed in all countries. With me many type of dishes can be preapred that includes main course,staters. I can help to build muscle and strength bones."),
                             GroceryItem(itemName: "Turkey", itemImage: "Turkey", itemInfo: "I am rich souce of protein which helps to repair bones,muscles,catilage,skin,blood and tissues. I can also act as substitute to chicken"),
                             GroceryItem(itemName: "Pork", itemImage: "Pork", itemInfo: "I am good source of vitamins and minerals like phosphorus,selenium and thiamine. i was consumed in many parts of the world" ),
                            GroceryItem(itemName: "Fish", itemImage: "Fish", itemInfo: "I am good source of vitamins such as D and B2(riboflavin). I am also rich in calcium and phosphorus and iron. I act as good substitute of meat and the flovour embedded in me acts as good taste when compared to other meat products.")])

let Product3 = Products(section: "Frozen",
                        items_Array:[
                            GroceryItem(itemName: "IceCream", itemImage:"IceCream",itemInfo: "I am loaded with vitamins and minerals and gives energy and maintain in simulating your brain. You know I can make you happier and even prevent breast cancer. I am available in many diffrent flavours across the world."),
                             GroceryItem(itemName: "Shrimp", itemImage:"Shrimp", itemInfo: "I have a variety of health benifits I am rich source of protein. Eating me helps to promote heart and brain health due to content of Omega-3 fatty acids."),
                             GroceryItem(itemName: "Desserts", itemImage: "Desserts", itemInfo: "I am a happy face to many people as they use me for birthdays and parties. I am in many different flavours and I am the most selled item across the world.")])

let Product4 = Products(section: "Fruits",
                        items_Array:[
                            GroceryItem(itemName: "Apple", itemImage:"Apple",itemInfo: "I will be grown in cold conditions. I am rich in fiber and antioxidants. I can help to reduce diabetes,heart diseases and cancer. I also helps to prevent weight loss"),
                             GroceryItem(itemName: "Orange", itemImage:"Orange", itemInfo: "I help to protect cells from damage and help your body to make collagen, a protein that helps to heal wounds. I will make you to absorb iron."),
                             GroceryItem(itemName: "Grapes", itemImage: "Grapes", itemInfo: "I am a good source of potassium which helps to maintain fluid balance in your body. Wine a drink is also prepared from me by crushing me into juice. I help to get down your blood pressure and reduce heart diseases."),
                            GroceryItem(itemName: "Lemon", itemImage: "Lemon", itemInfo: "I contain high amount of vitamin C and I am sour. Eating me add weight to your body and reduces the risk of heart diseases,kidney stones,digestive issues and cancer")])

let productsArray = [Product1,Product2,Product3,Product4]
