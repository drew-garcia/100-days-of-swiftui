import Cocoa

// Classes

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will work \(hours) hours a day, but other times will be spent about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()
let novall = Developer(hours: 4)
novall.printSummary()
novall.work()


class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible = false
}

let teslaX = Car(isElectric: true)


class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}
var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"
print(user1.username)
print(user2.username)


class NewUser {
    let id: Int
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [NewUser]()
for i in 1...3 {
    let user = NewUser(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}
print("Loop is finished!")
users.removeAll()
print("Array is clear!")


class VariableUser {
    var name = "Paul"
}
var variableUser = VariableUser()
variableUser.name = "Taylor"
variableUser = VariableUser()
print(variableUser.name)
