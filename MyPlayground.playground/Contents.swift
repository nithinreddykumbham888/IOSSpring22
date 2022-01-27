import UIKit
import CoreGraphics

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Pizza, Burger"
var clothes = "Socks, jeans, shorts, T-Shirts"

if(clothes.hasPrefix("Socks")){
    print("we found the item")
}
else{
    print("We missed it")
}

print(foodItems.split(separator: ","))

if(clothes.contains(",")){
    print("there is a long sequence")
}
else{
    print("only one item")
}

print(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex, offsetBy: -7)])

print(shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy:8)..<foodItems.endIndex])

print(clothes.remove(at: clothes.firstIndex(of: "j")!))

print(clothes.remove(at: clothes.firstIndex(of: "-")!))

print("\(shoppingList), \(clothes)")

clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

print("\(clothes)")

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)

print(shoppingList[..<firstIndexOfR])

var course = "44643-Mobile Computing-IOS"
print(course.index(of: "-")!))
