import Cocoa

//functions, parameters, and return values

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}
showWelcome()

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)


let root = sqrt(169)
print(root)

func rollDice() -> Int {
    Int.random(in: 1...6)
}
let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}


func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}
let c = pythagoras(a: 3, b: 4)
print(c)


func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser() -> [String] {
    ["Taylor", "Swift"]
}
let user = getUser()
print("Name: \(user[0]) \(user[1])")


func getUser2() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}
let user2 = getUser2()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")


func getUser3() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")


func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    // Send back all the rolls
    return rolls
}
let rolls = rollDice(sides: 6, count: 4)
print(rolls)
func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "HELLO, WORLD"
let result1 = isUppercase(string)
print(result1)
