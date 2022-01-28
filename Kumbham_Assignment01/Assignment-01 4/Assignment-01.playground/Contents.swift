import UIKit

/*
When you open this file  in Xcode, it is normal that you see errors in the source code.
 */
//**************** QUESTION 1 ****************
// 1.a) Declare a variable called  distance of type Double, using type annotation

var distance : Double

// 1.b) Declare a constant called  maxWeight of type an Int, with a value of 130, using type annotation

var maxWeight : Int = 130

// 1.c) Print  "Your max weight is xxxx pounds", replacing the xxxx with the value of maxWeight. Use String interpolation

print("Your max weight is \(maxWeight) pounds")
print("______________________________________________")
print(" ")

// 1.d) Write Swift source code to print the below in one single print statement
            /*
                Hello, All
                Welcome to Swift Programming..!
            */


print("Hello, All","\rWelcome to Swift Programming..!")
print("_________________________________________________")
//**************** END OF QUESTION 1 ****************



//**************** QUESTION 2 ****************
// 2.a) Predict what will happen when you try and execute below three statements when you uncomment the third line?

var x = 15
var y = 25.0
//y = x // type casting is not possible for different data types as we are assigning int to double

// 2.b) Fix the error in the question 2.a

y = Double(x)
//print(y)



//**************** END OF QUESTION 2 ****************



//**************** QUESTION 3 ****************
//3.a) Declare three constants x, y, z and assign the values 2, 7, 5. Write a swift code to find the largest number among the three integers.

print()
var x1 = 2
var y1 = 7
var z = 5
if((x1>=y1)&&(x1>=z)){
    print("x1 is greater")
  }
      else if((y1>=x1)&&(y1>=z)){
        print("y1 is greater")
      }
          else if((z>=x1)&&(z>=y1)){
            print("z is greater")
      }

print("_________________________________________")

//3.b) Declare 2 variables a,b and assign values 13, 103. Write a swift code to check whether the last digit of the two given  integer values are same or not.

print()
var a : Int = 13
var b : Int = 103
var a_output : Int = a % 10
var b_output : Int = b % 10
if(a_output == b_output){
    print("last digit of both a and b are same")
  }
    else{
    print("last digit of both a and b are not same")
    }

//**************** END OF QUESTION 3 ****************

print("_____________________________________________")
print()

//**************** QUESTION 4 ****************
//using loops
//4.a) Print the numbers 1 to N in alternative order, one number from the left side (starting with one) and one number from the right side (starting from N down to 1)
//Decalare var N = 10
//expected output is 1 10 2 9 3 8 4 7 5 6

var N : Int = 10
var start : Int = N / N
//print(start)
while(N > start){
    print(start,N,terminator: " ")
    start=start+1
    N=N-1
}
print()
print("_________________________________________")
print()

//4.b) If a number C is given, then print the following rhombus
//declare C = 5
//output
// Hint : use terminator in print statements and loops
//    *
//   ***
//  *****
// *******
//*********
// *******
//  *****
//   ***
//    *
var C : Int = 5
for i in 1...C{
    for _ in stride(from: C, to:i, by:-1){
        print(terminator:" ")
    }
    for _ in stride(from: (i*2)-1, to: 0, by: -1){
        print("*",terminator: "")
    }
    print()
}
for i in 1..<C{
    for _ in stride(from:i, to:0, by:-1){
        print(terminator:" ")
    }
    for _ in stride(from: (C*2)-3, to:0, by:-1){
        print("*",terminator: "")
    }
    print()
    C = C-1
}
//**************** END OF QUESTION 4 ****************

print()
print("______________________________________________")
print()

//**************** QUESTION 5 ****************
// Using Strings
//5.a) Declare a String and assign the value of your own, Write a Swift code to add "A" in front of the string and print it. If the string already begins with "A", then simply print it.

var hello : String = "Nithin"
var hello1 = hello[hello.startIndex]
if(hello1 == "A"){
    print(hello)
}
else{
    hello.insert("A",at: hello.startIndex)
    print(hello)
}

//5.b) Declare a String str1 and and assign the value of your own. Write a swift code to add the last character at the front and back of the given string and print it.

var str1 : String = "Swift"
var lastChar = str1[str1.index(before: str1.endIndex)]
str1.insert(lastChar,at: str1.startIndex)
str1.insert(lastChar,at: str1.endIndex)
print(str1)

print()
print("__________________________________________")
print()
//5.c) Declare a String Swift and print them in the reverse order.

var str2 : String = "Swift"
var output = String(str2.reversed())
print(output)

//5.d) Write a Swift code  to check if the first or last characters are 'a' of a given string, return the given string without those 'a' characters in the first and last, otherwise return the given string.
 //declare var myString1 = "ababa"
 //expected output bab
//**************** END OF QUESTION 5 ****************

print()
print("______________________________________")
print()
var myString1 : String = "ababa"
var firstchar = myString1[myString1.startIndex]
//print(firstchar)
var lastchar = myString1[myString1.index(before: myString1.endIndex)]
//print(lastchar)
if(firstchar == lastchar){
    myString1.remove(at: myString1.startIndex)
    myString1.remove(at: myString1.index(before: myString1.endIndex))
    print(myString1)
}
else{
    print(myString1)
}



