import Cocoa

// Type annotations
let surname: String = "Lasso"
var score: Int = 0
var score2: Double = 0

let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]
// Annotation
var teams: [String] = [String]()
var cities: [String] = []
// Inference
var clues = [String]()

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light


let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)
