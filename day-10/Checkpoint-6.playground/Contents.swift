import Cocoa

// Checkpoint 6

struct Car {
    let model: String
    let seats: Int
    private var gear = 1
    let maximumGears: Int

    
    init(model: String, seats: Int, maximumGears: Int) {
        self.model = model
        self.seats = seats
        self.maximumGears = maximumGears
    }
    
    mutating func changeGear(difference: Int) {
        gear = gear + difference

        if gear < 1 {
            gear = 1
        } else if gear > maximumGears {
            gear = maximumGears
        }
        print(gear)
    }
}

var car = Car(model: "BMW X3", seats: 5, maximumGears: 8)
car.changeGear(difference: -1)
