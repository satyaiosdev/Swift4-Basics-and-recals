//
//  ViewController.swift
//  Swift4
//
//  Created by Satya Venkata Krishna Achanta on 4/20/18.
//  Copyright © 2018 Satya Venkata Krishna Achanta. All rights reserved.
//

//Swift 4 updates from previous versions

import UIKit
import Foundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        basics()
        //typeInference()
        //arrays()//block
        //functions()//block
        //sets()
        //tuples()
        //optionals()
        //enumerations()
        //clousures()
        //classes()
        //inheritence()
        //properties()
        //subscripts()
        //initializers()
        //guardStatements()
        //mydailySchedule(work: 8, gym:2, cooking:1, sleep:8)
        
    }
    
    
    //access levels- data hiding are
    //public- allows to use any soure file in the module from internal or external,
    //internal- allows from internal not from outside,
    //private- only allows within the file in same diclarations,
    
    
    public func insidePublic(){
        
    }
    
    private func insidePrivate(){
        
    }
    internal func insideInternal(){
        
    }
    
    var publicString: String = "hey"//is automatically consider it as Public means also equal to public var
    //    another example
    
    internal func mydailySchedule(work: Int, gym: Int, cooking: Int, sleep: Int){
        
        let work = 24-gym-cooking-sleep-5
        let gym = 24-work-cooking-sleep-5
        let cooking = 24-work-gym-sleep-5
        let sleep = 24-work-gym-cooking-5
        print("My daily schedule for work:\(work), gym:\(gym), cooking:\(cooking) and sleep are:\(sleep)")
    }
    
    //mydailySchedule(work: 8, gym:2, cooking:1, sleep:8)//This function call in viewDidload
    
    func basics(){
        
        
        mydailySchedule(work: 8, gym:2, cooking:1, sleep:8)//This function call in viewDidload
        
        //inoutVariables
        //with inout we can change the value of a variable or parameter in the local scope and passed in parameters will also change.
        //        func sampleFunc(name: inout String){
        //
        //        }
        
        //generics are reusuable code like function without duplications
        //if you want to use same type of logic for different types of varables we use generics
        
        //case 1
        func swapStrings(firstString: inout String, secondString: inout String){
            let temp = firstString
            firstString = secondString
            secondString = temp
        }
        var milk = "milk"
        var curd = "curd"
        print("Before swapping: \(milk),\(curd)")
        
        swapStrings(firstString: &milk, secondString: &curd)//after swapping
        print("after swapping: \(milk),\(curd)")
        
        
        
        //case 2//we dont need to write another function if we use generics, its kind of short of form of function for temperory use
        func swapInts(firstInt: inout Int, secondInt: inout Int){
            let temp = firstInt
            firstInt = secondInt
            secondInt = temp
        }
        var day = 12
        var month = 30
        print("Before swapping: \(day),\(month)")
        
        swapInts(firstInt: &day, secondInt: &month)//after swapping
        print("after swapping: \(day),\(month)")
        
        
        //eventough same type of fucntionality we have written 2 blocks of code, instead we can write one block of code by eliminating duplicate code using generics <T>
        
        
        func swapVariables<T>(firstVariable: inout T, secondVariable: inout T){
            let temp = firstVariable
            firstVariable = secondVariable
            secondVariable = temp
        }
        //for Ints
        var milkString = "milk"
        var curdString = "curd"
        
        print("With Generics, before swap: \(milkString),\(curdString)")
        swapVariables(firstVariable: &milkString, secondVariable: &curdString)
        print("With Generics, after swap: \(milkString),\(milkString)")
        
        //for Strings
        
        var dayInt = 12
        var monthInt = 30
        
        print("With Generics, before swap: \(dayInt),\(monthInt)")
        swapVariables(firstVariable: &dayInt, secondVariable: &monthInt)
        print("With Generics, after swap: \(dayInt),\(monthInt)")
        
        //protocols
        //protocols are set of rules to follow to communicate with objects
        
        
        /*
         //typealias - helps to create an instance to datatypes, its like saving whole format so we can use whenever we have same formatted varable, like..
         
         typealias stringType = String
         
         let firstName : stringType = "Satya"
         
         typealias personDetailsTuple = (fullName: String, age: Int, working: Bool)
         
         let satyaDetailsTuple: personDetailsTuple = ("Satya", 25, true)
         
         print("It is after tuple, and satya details are\(satyaDetailsTuple)")
         
         */
        
        
        /*
         var meal:String?
         
         //meal = "dinner"
         
         guard let item = meal else{
         print("It is inside the item")
         return
         }
         print("It is outside the if let\(item)")
         print("It is outside the \(item)")
         */
        
        /*
         let myStr: String
         myStr = "shiny"
         //myStr = "Shannu" Immutable value only intialized once
         print(myStr)
         
         /*final class Dog {
         func bark() {
         print("Woof!")
         }
         }
         */
         
         class Corgi : Dog {
         override func bark() {
         print("Yip!")
         }
         }
         
         let muttface = Corgi()
         muttface.bark()//Gives erros, inheriting from a final class 'Dog'
         */
        /*
         let names = ["Amy", "Clara"]
         
         for i in 0 ... names.length {
         print("Hello, \(names[i])!")
         }//gives error-names.count should be replaced by length, and there was no 3rd element in the array. 0,1,2 its sould be names.count-1
         */
        /*
         let number = 16.0
         print("\(number) squared is \(number * number), and its square root is \(sqrt(number))")//prints with decimal values
         
         */
        
        /*var i = 2
         
         repeat {//do is replaced by repeat in swift- so No do in swift
         i *= i * 2
         } while i < 100
         
         print(i)//prints 128
         */
        
        /*let names = ["Amy", "Rory"]
         
         for var name in names {
         name = name.uppercased()
         print("HELLO, \(name)!")
         }
         //prints HELLO, AMY! HELLO, RORY!
         */
        
        /*func sayHello(to name: String) -> String {
         return "Howdy, \(name)!"
         }
         
         print("\(sayHello(to: "Jayne"))")//Howdy, Jayne!
         */
        
        /*let oneMillion = 1_000_000
         let oneThousand = oneMillion/0_1_0_0_0
         print(oneThousand)//prints one thousand, escapes "_"
         */
        
        
        /*let i = "5"
         let j = i+i
         print(j)//prints 55 as string, its just adds 2 strings
         */
        
        
    }
    
    
    
    //Guard statements can reduce num or lines on if condition, can perform multiple conditions in single line of code starts with guard
    func guardStatements(){
        /*
         var a = 5//If a & b are optional values the below gaurd will execute without errorss
         var b = 6
         
         
         guard let c = a, let d = b else {//a and d are not optionals there is no way of nil, as we assigned values to those
         print("No valuesassigned for a,b")
         return
         }
         */
        
    }
    
    
    //It is a process of preparing instance of a class, structure or enumaration to use
    func initializers(){
        
        struct Fahrenheit{
            var temp : Double
            //We can define multiple custom initializers within the strucure
            init(fahrenheitDegrees heatTemp: Double){
                
                temp = (heatTemp + 25)
            }
            
            init(fahrenheitCelsius celTemp: Double){
                temp = (celTemp - 25)
            }
            
        }
        
        print(Fahrenheit(fahrenheitDegrees: 47))
        print(Fahrenheit(fahrenheitCelsius: 46))
        
    }
    
    //subscripts are actually used to shortcut for accessing the member elements in collections, lists or sequence
    func subscripts(){
        
        var animals = ["cow" : 4, "deer" : 2, "dog" : 4]
        
        animals["bird"] = 2//subscript
        animals["cow"] = 3//modifying
        
        print("Animals array is:\(animals)")
        
    }
    
    //Properties are responsible for storing or containing values
    func properties(){
        
        
        class SatyaProfile{
            //Stored property
            var firstName : String
            var lastName : String
            
            //Here we set the age is class property and only with the class name only we can access it, cant intiantiate it
            //we can also convert instance methods into class methods by putting class infront of the method
            class var age:Int{//class property
                return 25
            }
            
            
            //Computed Property
            var fullName: String{
                
                //get{//we can use simple retunr form instead of get for simpler function
                return firstName + " " + lastName
                //}
                /*set{//If wants to update object, need to use setters
                 var nameArray = newValue.components(separatedBy: " ")
                 var firstName = nameArray[0]
                 var lastName = nameArray[1]
                 
                 }*/
            }
            
            init(first: String, last: String){
                self.firstName = first
                self.lastName = last
            }
            
        }
        
        let personName = SatyaProfile(first: "Satya", last: "Achanta")//instance of satyaProfile class
        print(personName.fullName)
        print(SatyaProfile.age)//Here we set the age is class property and only with the class name only we can access it, cant intiantiate it
        //we can also convert instance methods into class methods by putting class infront of the method
        
    }
    
    //classes are blueprints of objects
    //creating class and performing CRUD functionalities is lot easier in swift
    //We no need to think about synthasize, or instance variables
    //find the class declaration after the viewController class
    func classes(){
        //It will allow us to read the class properties without instancing it
        let profile = SatyaProfile()
        
        print(profile.description())//before updating properties
        
        profile.name = "Krishna Achanta"
        profile.age = 26
        print(profile.description())//after changing properties of the class
        
        
        //If you want custom initializer with paremeters you can call it as
        let secondStudent = SatyaProfile(name:"Arjun")
        print("it is from custom initializer name is :\(secondStudent.description())")
        
    }
    
    //It helps to clone super class properties in subclass
    func inheritence(){
        class satyaAddress: SatyaProfile{//satyaAddress is a subClass which clones all properties and methods of SatyaProfile class or subclass
            
            var cityName : String//It gives an error need to init like super class
            
            
            override init(){//this time need to override super class init method so we are using override
                cityName = "Detroit"//still it gives a error because we cant completely override super class methods so we need to recall super calss init here by using super init
                super.init()
                
            }
            //now we can access subclass and super calss methods here
            /* override func description() -> String {
             let oldDetails = super.description()
             
             print("Data from super class is: \(oldDetails), Subclass information is: \(cityName)")
             }
             
             print("City naame is: \(cityName), person ename is: ")
             */
            
        }
        
    }
    
    
    
    // Clousures are nothing but functions, like self contained group of reusuable code. But, clousures doesnt need a name to reuse. It is more simpler than function. We can also call it as block
    func clousures(){
        
        var satyaProfile = {//creating a block of code and callign it using a variable, this is one of using but we can even use this block of code without calling the name like below
            print("His full name is Satya Venkata Krishna")
        }
        
        
        //we can use the clousure within the functions
        func personeBioData(itsClousureCall :()->()){//()->() acepts no datatype as, accepts clousure and returns a clousure
            for _ in 0...5{
                itsClousureCall()
            }
        }
        
        personeBioData(itsClousureCall: satyaProfile)//one way of doing it, instead of calling that block of code, we ca replace it with function call parameters like below
        
        personeBioData { ()->() in//this is the usual way to intereact with clousure, function would accepts clousure with any nr of lines. ()->() tells us its sending 0 perameters and returning no values
            print("His full name is Satya Venkata Krishna Achanta")
            
        }
        
        
        
        //another exampe that return parameters using swift predefined functions called sorted
        
        //let unsortedArray = [46,45,47,34,40,4,3,2,1]
        
        //let sortedArray = sorted(unsortedArray, {(first : Int, second: Int) -> Bool in
        //return first<second
        //})
        //sortedArray
        
    }
    
    
    
    
    
    
    
    //enumerations- We can define data with more possible values, insted creating multiple variables
    //enum should start with capital letter, whould be same datatype within it
    func enumerations(){
        enum SatyaProfile{ //New data type, its not an variable
            case name
            case age
            case city
        }
        
        
        var studentProfile : SatyaProfile
        studentProfile = .name//can be any preference
        
        switch studentProfile{
        case .name:
            print("Printing name Satya")
        case .age:
            print("Print age 25")
            
        case .city:
            print("Print City")
            
            
        }
        
        //enums with raw value
        enum TimeOfMeal: Int{
            case breakfast = 9
            case lunch = 12
            case dinner = 8
        }
        
        let mealTime = TimeOfMeal.lunch
        print(mealTime)//it prints lunch
        print(mealTime.rawValue)//it prints 12, as its value of lunch
        
        
        //Enum associated vale, here we give values manually unlike raw values
        
        enum Meals{
            case BreakFast
            case Lunch(serve: String)
            case Dinner(atTime: Int)
        }
        //var myMeal = Meals.BreakFast//for breakfast
        let myMeal = Meals.Dinner(atTime: 9)//for breakfast
        
        
        switch myMeal{
        case .BreakFast:
            print("Its time for BreakFast")
            
        case.Lunch:
            print("Its Lunch time and lunch gonna be\(myMeal)")
            
            
        case.Dinner:
            print("Dinner at time\(myMeal)")
            
            
        }
        
    }
    //enums with raw value
    
    
    //optionals- To produce optional value, forcefull and optional unwrap the values
    func optionals(){
        var age: Int?//optional unwraping the value might be there or nill
        
        
        if age != nil{
            print("It is inside optionals for nil age, and the age is:\(age!)")
        }
        
        age = 35
        if age != nil{
            //Here we are forcefully unwrapping the age, because we know there is age because it is inside the if
            print("It is inside optionals and age is not nill and the value is:\(age!)")//! indicated forceful unwrapping
            
        }
        
    }
    
    
    
    //tuples- we can add, update, delete multiple datatypes of values to a single object or variable
    func tuples(){
        
        let someTuple = ("one", sample: "two", bool: true)
        print("Sample tuple is \(someTuple.bool)")//either we can directly add multiple datatypes to and retrive using index values,  or we can add key values
        
        
        let sampleTuple = (1,"One", true)
        
        print("it is sampleTuple data first value:\(sampleTuple.0), second valu: \(sampleTuple.1)")
        
        let returString = tupleFUnctionReturns(name: "Satya", age: 25)
        
        print("Returning from tupleFuntionReturns: \(returString.name)")//for tuple
        
        let (name, age, city) = tupleFUnctionReturns()
        print("It is directly tuple calling:\(name,age,city)")
        
    }
    //also know as tuple
    func tupleFUnctionReturns(name:String = "Venkat", age:Int = 26) ->(name:String, age:Int, city:String){
        let city = "Detroit"
        
        return (name, age, city)
    }
    
    //easy way to get tuple values from funtion
    
    
    //sets-- We use sets to save data in the form of key value pair
    func sets(){
        var numSet = [1:"one",
                      2:"two",
                      3:"three",
                      4:"four"]
        var stringSet = ["MI":"Michigan",
                         "NY":"NewYork",
                         "CA":"California",
                         "OK":"Oklahoma"]
        
        print(numSet[1]!)
        numSet.updateValue("five", forKey: 5)
        print(numSet)
        
        stringSet.removeValue(forKey: "CA")
        print(stringSet)
        
        numSet[4] = nil
        print("After 4 nill\(numSet)")
        
        
        for(key,value) in stringSet{
            print("It is inside for loop and pring key value of: \(key) for value: \(value)")
            
        }
        
    }
    
    
    
    
    //arrays - To save same type of data set values
    func arrays(){
        var numArray = [1,2,3,4,5]
        var stringArray = ["one", "two", "three", "four", "five"]
        
        
        numArray.append(6)
        stringArray.append("six")
        print("\(numArray, stringArray)")
        
        numArray.insert(7, at: 2)
        stringArray.insert("Seven", at: 2)
        print("\(numArray, stringArray)")
        
        
        //numArray.remove(at: 2)
        //print("\(numArray, stringArray)")
        
        stringArray.remove(at: 2)
        
        //Multi dimentional array
        
        //let homeArray : [[String]] = [["Sam","24"],["Chris","25"]]
        //print("Multidimentional array at 0,0 : \(homeArray[0][0])")
        
        let i = "5"
        let j = i+i
        print(j)//prints 55
        
    }
    
    func typeInference(){
        
        let a = 2
        let b = 3
        
        print(a/b)
        
        //ternary operators
        //helps to write condition and assign values in single line, "var condition var ? yes : no"
        let age = 25
        
        //let printString =
        print(age >= 18 ? "Adult" : "Children")
        
        let year = 2018.10
        let lastYear: Int = Int(year)
        let yearString: String = String(year)
        
        print("Year Int \(year), year Double \(lastYear), yearString\(yearString)")
        
    }
    
    //functions- TO referencing code to somewhere else and to report back to next line
    func functions(){
        //functions in swift
        
        print("\(sampleFunction(age:25, name: "Satya", city: "Pontiac"))")
        
        
    }
    
    func sampleFunction(age : Int, name: String, city : String = "Detroit") ->String{
        
        let returnString = "\(name, age, city) is returned."
        return returnString
        //print("it is parameter value")
    }
    
}

//creating class and performing CRUD functionalities is lot easier in swift
//We no need to think about synthasize, or instance variables
class SatyaProfile{//we can even make it final to stop modifying the class or its properties in subclasses
    var name: String//either we can initialize here or we can create init() method to initialize the varialbles
    var age: Int
    
    func description() ->String{
        return("Student profile name is: \(name) and age is: \(age)")
    }
    
    init() {//for intitializing incase data need to update
        
        name = "Satya Venkata Krishna"
        age = 25
        
    }
    
    
    //for parameter initializer or cutom initializer
    init(name:String){
        self.name = name
        self.age = 27
    }
    
    
}

