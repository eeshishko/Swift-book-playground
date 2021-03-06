//: Playground - noun: a place where people can play


// Swift’s array, set, and dictionary types are implemented as generic collections.

//NOTE
//Swift’s Array type is bridged to Foundation’s NSArray class.


// Array<Element> == [Element]
let arrayFull: Array<Int> = [1, 2, 3, 4]
let arrayShorthand: [Int] = [1, 2, 3, 4]

let repeationArray = Array(repeating: 2, count: 5)

var shoppingList = ["Banana", "Apple", "Cheese", "Chocolate", "jj"]
shoppingList[2...4] = ["da", "ad", "ad"]

let a = "a"
let b = "b"

var ab: Set = [a, b]
print(ab)

// Hashable and Hash Value
let simpleSet: Set = ["One", "Two", "Three"]

//NOTE
//A dictionary Key type must conform to the Hashable protocol, like a set’s value type.

var airports: [String: String] = ["VVO" : "Vladivostok", "SVO" : "Sheremetevo", "NHK" : "Nakhodka"]
if let oldvalue = airports.updateValue("Moscow", forKey: "SVO") {
    print("Old value for \"SVO\" was \(oldvalue)")
}

// Creating arrays from dictionary parts:
let keyArray = [String](airports.keys)
let valueArray = [String](airports.values)

struct Vehicle: Hashable {
    let firm: String
    var age: Int
    
    var hashValue: Int {
        get {
            return 5
        }
    }
}

let vehicleA = Vehicle(firm: "Toyota", age: 3)
let vehicleB = Vehicle(firm: "Lamborgini", age: 1)

let vehicleSet: Set = [vehicleA, vehicleB]



