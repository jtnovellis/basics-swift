import Foundation

// un inicializador es un constructor para darle valor inicial a las propiedades de una clase/struct


struct Fahrenheit {
    var temperature: Double
    init(){
        self.temperature = 32
    }
}

var f1 = Fahrenheit()

struct Celsius {
    var temperature: Double
    init(fromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
    init(_ celsius: Double) {
        self.temperature = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212)
let freexingPointOfWater = Celsius(fromKelvin: 273.15)

let bodyTemperature = Celsius(37.0)

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGray = Color(white: 0.5)

class SurveyQuestion {
    let text: String
    var response: String?
    
    init(_ text: String) {
        self.text = text
    }
    
    func ask(){
        print(self.text)
    }
}

let q1 = SurveyQuestion("Te gustan los tacos?")
q1.ask()
q1.response = "si, me gustan"

let q2 = SurveyQuestion("te gusta bailar?")
q2.ask()
q2.response = "si, me encanta bailar"


// inicializadores en subclases

// constructores designados y de por conveniecia
// designado -> designado super clase
// conveniencia -> otro init de la misma clase
// el ultimo init que se llame siempre debe ser designado

class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) ruedas"
    }
}

let vehicle = Vehicle()
vehicle.description

class Bicycle: Vehicle {
    override init() {
        super.init()
        self.numberOfWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.description

class HoverBoard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        // aqui se llama implicitamente a super.init()
    }
    override var description: String {
        return "\(super.description) en el color \(self.color)"
    }
}

let hover = HoverBoard(color: "silver")
hover.description




// Failable Initializer


enum TemperatureUnit {
    case kelvin, celsius, fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

let someUnit = TemperatureUnit(symbol: "X")

class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty {
            return nil
        } else {
            self.name = name
        }
    }
}

class CarItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 {
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let someSocks = CarItem(name: "Socks", quantity: 3) {
    print("\(someSocks.name) - \(someSocks.quantity)")
}


// Destrucción de objetos con deinit


class Bank {
    static var coinsInBank = 2_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    static func receive(coins: Int) {
        coinsInBank += coins
    }
}

class Player {
    var coinsInPurse: Int
    init(coins: Int) {
        self.coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

var player1: Player? = Player(coins: 100)
Bank.coinsInBank
player1!.win(coins: 2_000)
Bank.coinsInBank

player1 = nil
Bank.coinsInBank
