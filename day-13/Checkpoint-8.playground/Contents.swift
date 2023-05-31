import Cocoa

// Checkpoint 8
// 1. Make a protocol that describes a building
// 2. Protocol should require the following:
//  - A property storing how many rooms it has.
//  - A property storing the cost as an integer
//  - A property storing the name of the estate agent selling the building
//  - A method for printing the sales summary of the building.
// 3. Create two struycts, House and Office, that conform to it

protocol Building {
    var rooms: Int {get}
    var cost: Int {get set}
    var agent: String {get set}
    var type: String {get}
    func printSummary()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    let type = "house"
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    let type = "office"
}

extension Building {
    func printSummary() {
        print("Talk to \(agent) to buy this \(type) for $\(cost).")
    }
}

let exampleHouse = House(rooms: 4, cost: 500_000, agent: "Swift & Co")
exampleHouse.printSummary()

let exampleOffice = Office(rooms: 30, cost: 12_000_000, agent: "Taytay Inc")
exampleOffice.printSummary()

