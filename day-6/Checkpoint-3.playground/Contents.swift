import Cocoa

// Checkpoint 3

// Loop from 1 to 100
// 1. If it’s a multiple of 3, print “Fizz”
// 2. If it’s a multiple of 5, print “Buzz”
// 3. If it’s a multiple of 3 and 5, print “FizzBuzz”
// 4. Otherwise, just print the number.

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
