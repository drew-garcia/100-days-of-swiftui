import Cocoa

// How to store truth with Booleans
let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

var number = 120
print(number.isMultiple(of: 3))

let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOverNew = false
print(gameOverNew)

gameOverNew.toggle()
print(gameOverNew)


// How to join strings together
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

number = 11
var missionMessage = "Apollo " + String(number) + " landed on the moon."
missionMessage = "Apollo \(number) landed on the moon."

print("5 x 5 is \(5 * 5)")
