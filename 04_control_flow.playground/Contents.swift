import Foundation

let names = ["Jairo", "Jair", "Toro", "Novellis"]

func greeting(name: String) {
    print("Hi, \(name)")
}

for name in names {
    greeting(name: name)
}

let numberOlegs = ["spider": 8, "ant": 6, "dog": 4]

for (name, legNumber) in numberOlegs {
    print("animal: \(name), no. of patas: \(legNumber)")
}

for index in 0...9 {
    print("\(index) x 3 = \(index * 3)")
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tick in stride(from: 0, to: minutes, by: minuteInterval) {
    print("\(hour) : \(tick)")
}

// buble while

var i = 0
while i < 10 {
    i += 1
}

repeat {
    i += 1
} while i < 12


// los numeros primos del 1 al 100

var prime = [Int]()

for num in 2...100 {
    var counter = 0
    for num2 in 1...num {
        if num % num2 == 0 {
            counter += 1
        }
        if counter > 2 {
            break
        }
    }
    if counter == 2 {
        prime.append(num)
    }
}

print(prime)


// sentencia de control

// if y else

var temp = 18
if temp <= 15 {
    print("Hace frio")
} else if temp >= 25 {
    print("Hace calor")
} else {
    print("buen clima")
}


// uso del switch

let val = "@case"

switch val {
    case "@case":
        print("el caso es \(val)")
    case "@otro", "@este":
        print("no es ningun caso")
    default:
        break
}

let moons = 62
let phrase = "lunas en Saturno"
let naturalcount: String

switch moons {
    case 0:
        naturalcount = "No hay"
    case 1..<5:
        naturalcount = "Hay pocas "
    case 12..<100:
        naturalcount = "hay decenas de"
    default:
        naturalcount = "Hay muchisimas"
}

print("\(naturalcount) \(phrase)")


let somePoint = (1, 1)
switch somePoint {
case (0,0):
    print("el punto \(somePoint) es el origen")
case (_, 0):
    print("el punto \(somePoint) se esta en el eje X")
case (0, _):
    print("el punto \(somePoint) esta sobre el eje Y")
case(-2...2, -2...2):
    print("el punto \(somePoint) esta sobre el Interior del cuadrado")
default:
    print("el punto \(somePoint) esta sobre algun otro lado")
}

let anotherPoint = (3, 0)
switch anotherPoint {
case (0,0):
    print("el punto \(somePoint) es el origen")
case (let x, 0):
    print("el punto \(somePoint) se esta en el eje X, en \(x)")
case (0, let y):
    print("el punto \(somePoint) esta sobre el eje Y, en \(y)")
case let (x, y) where x == y:
    print("el punto se haya sobre la recta x = y")
default:
    print("el punto \(somePoint) esta sobre algun otro lado")
}

let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("es una vocal")
case "b", "c", "d", "f", "g":
    print("es consonante")
default:
    print("no es nada")
}

let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("Esta sobre el eje, a distancia \(distance) del origen")
default:
    print("no esta sobre el eje")
}


// Control Tranfer Sencentes = continue, break, alltrhough, return throw

let sentence = "Las mentes grandes piensan igual"
var filteredSentence = ""
let charToRemove: [Character] = ["a", "e", "i", "o", "u"]

for char in sentence {
    if charToRemove.contains(char) {
        continue
    }
    filteredSentence.append(char)
    if char == "d" {
        break
    }
}
filteredSentence


// fallthrough

let integerToDescribe = 5
var description = "El numero \(integerToDescribe) es"

switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " un numero primo"
    fallthrough
default:
    description += " un numero entero"
}

print(description)


var people = ["name": "Jairo Toro", "age": 28, "isMale": true] as [String : Any]

func testUser( person: [String: Any]) {
    guard let surname = person["name"] else {
        return
    }
    // aqui existe surname
    print(surname)
    guard let age = person["age"] else {
        return
    }
    print("la edad es \(age)")
}

// como saber si la API esta disponible o fi tienen la funcionalidad segun las versiones

if #available(iOS 16, macOS 13, *) {
    // ejecurar codigo para versiones nuevas
    
} else {
    // versines viejas
}

