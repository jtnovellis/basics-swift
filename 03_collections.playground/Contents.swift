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
