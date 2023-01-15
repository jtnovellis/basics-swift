import UIKit

// Struct vs Class

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

someResolution.height
someResolution.width

someVideoMode.resolution.width = 1280
someVideoMode.resolution.width

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
cinema.width = 2048
cinema.width

hd.width

enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.north
let oldDirection = currentDirection
currentDirection = .south

currentDirection
oldDirection


// las clases son tipos de datos referenciados

let tenEigthy = VideoMode()
tenEigthy.resolution = hd
tenEigthy.interlaced = true
tenEigthy.name = "1080i"
tenEigthy.frameRate = 25.0

let alsoTenEighty = tenEigthy
alsoTenEighty.frameRate = 30.0

tenEigthy.frameRate

if tenEigthy === alsoTenEighty {
    print("son el mismo objeto")
} else {
    print("son diferentes")
}
