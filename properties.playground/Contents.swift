import UIKit

// stored properties
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)


// lazy properties
class DataImporter {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Algo de datos")
manager.data.append("otros datos")
manager.importer.filename



// computed properties
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + size.width / 2
            let centerY = origin.y + size.height / 2
            return Point(x: centerX, y: centerY)
        }
        set (newCenter){
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center

let initialsquareCenter = square.center
square.center = Point(x: 20, y: 20)


struct Cuboid {
    var width = 0.0
    var height = 0.0
    var depth = 0.0
    var vol: Double {
        return width * height * depth
        }
}


let cuboid = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
cuboid.vol

struct Saludo {
    var name = ""
    var gender = ""
    var languaje = ""
    var saludar: String {
        get {
            if (languaje == "espanol" && gender == "male") {
                return "Hola senor \(name)"
            }
            if (languaje == "espanol" && gender == "female") {
                return "Hola senora \(name)"
            }
            return "no ppuedo saludar"
        }
    }
}

let primerSaludo = Saludo(name: "Jairo", gender: "male", languaje: "espanol")
primerSaludo.saludar
