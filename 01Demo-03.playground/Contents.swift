import UIKit

var greeting = "Hello, playground"
print("nithin",10,24.55) // placing a comma gives space in output

//for interpolatipon we use "\(abc)"
var good_name = "Nithin_Reddy_Kumbham"
var age = 24
print("Hello, \(good_name), your age is \(age)")

var language = "swift"
print("still needs time to get familiar with \(language)")

print("My age is \(age) years and after \(age) years, I will be aged \(age*2)")
//we can do any type of calculations in interpolation

print() // for new line
print("""
hello,
nithin
reddy
kumbham,
welcome \rto Spring 2022
""")
//\r is also for new line saperator

print()
print("Welcome to Swift Programming")
print("Spring 2022")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Spring 2022")

print()
print("The list of numbers are ",terminator: "")
print(1,2,3,4,5,6)
print("The new pattern is ",terminator: "")
print(1,2,3,4,5,6, separator: "-")
print()

//CONSTANTS & VARIABLES
var name : String = "nithin"
name = "Nithin Reddy Kumbham"
print("hello \(name)")

var value : Int = 43
print("we are gonna trim the value to half i.e \(43/2)")

let value1 : Double = 22.7
var value2 = 55.7
print(value2, (value1/2), separator: " - ")

var text = "Hello dude"
print(text,terminator: " ")
print("text")
print()

//TUPLES
var errorMessage = (errorCode:717 , errorMessage:"out of bounds")
print(errorMessage)
print(errorMessage.errorCode,errorMessage.errorMessage,separator: " ")

var name1 = ("Nithin","Reddy")
var fName = name1.0
var lname = name1.1
print(fName,lname,separator: " ")

var origin = (x:0, y:1)
var point = (origin.x, origin.y)
print(point)

var cricketTeam = ("India","Austrlia",("England","Srilanka"))
print(cricketTeam.0)
print(cricketTeam.1)
print(cricketTeam.2.1,cricketTeam.2.0,separator: " ")

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))
