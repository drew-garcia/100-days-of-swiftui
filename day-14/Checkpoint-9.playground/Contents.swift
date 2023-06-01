import Cocoa

// Checkpoint 9
// Write a function that accepts an optional array of integers, and returns one of those integers randomly
// If the array is missing or empty, return a new random number in the range 1 through 100
// Write your function in a single line of code.

func getNumber(in array: [Int]?) -> Int {
    lazy var random = Int.random(in: 1...100)
    return (array?.randomElement() ?? random) ?? random
}
