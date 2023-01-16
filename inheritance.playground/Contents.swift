import Foundation

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Viajando a \(currentSpeed) km/h"
    }
    func makeNoise(){
        print("el ruido depende del vehiculo")
    }
}


let someVehicle = Vehicle()
someVehicle.description


class Bicycle: Vehicle {
    var hasBasket = false
    override func makeNoise() {
        print("clin! clin!")
    }
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
bicycle.description


class Tandem: Bicycle {
    var currenNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currenNumberOfPassengers = 2
tandem.currentSpeed = 22.0
tandem.description
tandem.makeNoise()

class Train: Vehicle {
    final var numberOfWagons = 0
    override func makeNoise() {
        print("Chooo! Chooo!")
    }
}

let train = Train()
train.makeNoise()


class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " en la marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55.0
car.gear = 3
car.description


class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
}

let automatic = AutomaticCar()

automatic.currentSpeed = 34
automatic.description
