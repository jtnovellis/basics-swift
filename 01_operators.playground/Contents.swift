import Foundation

let b = 10
var a = 5

a = b

let (x, y) = (1, 2)


if a == b {
    print("Los valores de a y b son iguales")
}

let five = 5
let minusFive = -five

var number = 7

number += 3
number -= 2

let name = "Jairo"

if name == "Jairo" {
    print("Welcome \(name)")
} else {
    print("You're not welcome")
}

(1, "Jairo") < (2, "Jair")

// operador ternanio

let height = 40
var hasImage = true
var rowheight = 0

/*
if hasImage {
    rowheight = height + 50
} else {
    rowheight = height + 10
}
*/

rowheight = height + (hasImage ? 50 : 10)


// nil coalescing operator
let defaultAge = 18
var userAge: Int?

userAge = 28

var ageToBeUsed = userAge ?? defaultAge

let defaultName = "Antonio Banderas"
var userName: String? = "Jairo Toro"

var nameToBeUsed = userName ?? defaultName


// RANGOS

// Rango cerrado incluye ambos valores
for idx in 1...5 {
    print(idx)
}

// rango semiabierto incluye el valor de inicio pero no el de cierrre
for idx in 1..<5 {
    print(idx)
}

let names = ["jairo", "jair", "toro", "novellis"]

for i in 0..<names.count {
    print("el nombre es \(names[i])")
}


// operadores logicos "and", "or" y "not"

let allowEntry = false

if !allowEntry {
    print("denegated access")
}

let enterDoorCode = true
let passRetinaScanner = false

if enterDoorCode && passRetinaScanner {
    print("Welcome!!")
} else {
    print("denegated access")
}

if enterDoorCode || passRetinaScanner {
    print("Welcome!!")
} else {
    print("denegated access")
}
