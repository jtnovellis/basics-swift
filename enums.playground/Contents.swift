import UIKit

enum SomeEnum {
    // aqui va la definicion de enum
}

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet: Int {
    case mercury = 1,
         venus,
         earth,
         mars,
         jupiter,
         saturn,
         uranus,
         neptune
}

var directionToGo = CompassPoint.east
directionToGo = .north

switch directionToGo {
case .north:
    print("got to north")
case .south:
    print("go to south")
case .east:
    print("go to east")
case .west:
    print("go to west")
}

let somePlanet = Planet.earth

switch somePlanet {
case .earth:
    print("planeta seguro")
default:
    print("is not safety")
}

enum Beverage: CaseIterable {
    case coffe, tea, juice, redbull
}

let numberOfChoices = Beverage.allCases.count

for beverage in Beverage.allCases {
    print(beverage)
}

enum MusicGenres {
    case jazz
    case vallenato
    case salsa
    case merengue
    case clasica
    case rock
}

let favoriteGenre = MusicGenres.jazz
let message = "I like"

switch favoriteGenre {
case .jazz:
    print("\(message) \(favoriteGenre)")
case .vallenato:
    print("\(message) \(favoriteGenre)")
case .salsa:
    print("\(message) \(favoriteGenre)")
case .merengue:
    print("\(message) \(favoriteGenre)")
case .clasica:
    print("\(message) \(favoriteGenre)")
case .rock:
    print("\(message) \(favoriteGenre)")
}

enum BarCode {
    case upc(Int, Int, Int, Int)
    case qr(String)
}

var product = BarCode.upc(8, 51226, 85909, 3)
product = .qr("ASDFGHJKL")


switch product {
case let .upc(system, manufacturer, item, check):
    print("UPC: \(system) \(manufacturer) \(item) \(check)")
case let .qr(code):
    print("QR: \(code)")
}


enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

let earthOrder = Planet.earth.rawValue

let northDirection = CompassPoint.north.rawValue

let possiblePlanet = Planet(rawValue: 5)

let planetPosition = 11

if let anyPlanet = Planet(rawValue: planetPosition) {
    switch anyPlanet {
    case .earth:
        print("planeta seguro")
    default:
        print("is not safety")
    }
} else {
    print("El planeta no existe")
}
