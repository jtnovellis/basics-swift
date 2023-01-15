import Foundation

/* se dividen en 3 grupos
 
 Arrays
 Conjuntos
 Diccionarios
 
 cualquier collecion puede ser mutable o inmutable
 */


// ARRAYS

var someInts = [Int]()
someInts.count
someInts.append(31)


var someDoubles = Array(repeating: 3.141592, count: 7)
someDoubles.count


var moreSoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreSoubles
aLotOfDoubles.count

var shoppingList: [String] = ["papas", "tortillas", "pimientos", "cerdo", "pina"]
shoppingList.count

if shoppingList.isEmpty {
    print("esta vacia la lista")
} else {
    print("Mandemos a ricardo a comprar")
}

shoppingList.append("coca-cola")
shoppingList += ["Topos", "pico de gallo"]
shoppingList.count


var firstElement = shoppingList[0]

shoppingList[0] = "huevos"

shoppingList[3...5] = ["naranja", "platano", "mango"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList

let last = shoppingList.removeLast()
shoppingList

let first = shoppingList.removeFirst()
shoppingList


// iterando arrays

for item in shoppingList {
    print(item)
}

for (i, item) in shoppingList.enumerated() {
    print("item: \(i + 1): \(item)")
}



// CONJUNTOS (set)

var letters = Set<Character>()
letters.count
letters.insert("a")
letters.insert("h")
letters

var favoriteGames: Set<String> = ["Final Fantasy", "WOWC"]
favoriteGames.count

if favoriteGames.isEmpty {
    print("There is not games")
} else {
    print("There are games")
}

favoriteGames.insert("Metal Gear")

if let removeGame = favoriteGames.remove("FarCry") {
    print("Lo ha eliminado \(removeGame)")
}

if favoriteGames.contains("Metal Gear") {
    print("Me encanta el juego")
}

for game in favoriteGames.sorted() {
    print(game)
}

// operaciones con conjuntos

let oddNumbers: Set = [1, 3, 5, 7, 9]
let evenNumbers: Set = [0, 2, 4, 6, 8]
let primeNumbers: Set = [2, 3, 5, 7]

// A union B = elementos que son de a o b o de los dos
oddNumbers.union(evenNumbers).sorted()

// A intersection B = elementos que son a la vez de A y B
oddNumbers.intersection(evenNumbers)
evenNumbers.intersection(primeNumbers)
oddNumbers.intersection(primeNumbers)

// A - B = elementos que son de a pero no de b
oddNumbers.subtracting(primeNumbers)

// A = B = {A-B} union {B-A}
oddNumbers.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["🐈", "🐶"]
let farmAnimals: Set = ["🐔", "🐮", "🐷", "🐴", "🐶", "🐈"]
let cityAnimals: Set = ["🐀", "🦅"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
// A y B son disjuntos si su interseccion es vacia
farmAnimals.isDisjoint(with: cityAnimals)




// DICCIONARIOS - los objetos estarn guardados como clave valor

var namesOfIntegers = [Int: String]()
namesOfIntegers[15] = "quince"
namesOfIntegers = [:]

var airports: [String: String] = ["YYZ": "Toronto", "DUB": "Dublin", "PMI": "palma de mallorca"]

airports.count
airports.isEmpty
airports["LHR"] = "London City Airport"
airports["LHR"] = "London Hearthrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("el viejo nombre era \(oldValue)")
}

airports["PMI"] = nil
airports

let removedAirport = airports.removeValue(forKey: "LHR")

// iteracion de diccionarios

for (key, value) in airports {
    print("\(key): \(value)")
}

for key in airports.keys {
    print(key)
}

for name in airports.values {
    print(name)
}

let airposrtKeys = [String](airports.keys)
let airportsNames = [String](airports.values)
