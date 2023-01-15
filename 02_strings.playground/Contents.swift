import Foundation

let normalString = "Normal String"

let multiLineString = """
 This\
 is\
 a\
 multiline\
 string
"""


var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Is Empty")
} else {
    print("El string is \(emptyString)")
}


// En swift hay dos tipos de datos.
// los tipos de referencia y los tipos evaluados

var a = "A"
var b = "B"

b = a
print("a vale \(a) y b vale \(b)")
b = "C"
print("a vale \(a) y b vale \(b)")

let name = "Jairo Toro 💻"
for char in name {
    print(char)
}

name.count

let exclamation: Character = "!"

let nameChars: [Character] = ["J", "a", "i", "r", "o"]

var nameString = String(nameChars)

nameString.append(exclamation)


let greeting = "Hola, como estas?"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

for i in greeting.indices {
    print(" \(greeting[i])", terminator: "")
}

var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " como estas?", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex

welcome.removeSubrange(range)

let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<index]

let newString = String(firstPart)

let newGreeting = "Hola, soy Jairo"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("bye")

let collection = [
    "Act 1 scene 1",
    "Act 1 scene 2",
    "Act 1 scene 3",
    "Act 1 scene 4",
    "Act 2 scene 1",
    "Act 2 scene 2",
    "Act 2 scene 3"
]

var act1SceneCount = 0
var act2SceneCount = 0

for scene in collection {
    if scene.hasPrefix("Act 1") {
        act1SceneCount += 1
    } else if scene.hasPrefix("Act 2") {
        act2SceneCount += 1
    }
}

act1SceneCount
act2SceneCount

// representaciones unicode

let ghost = "👻"

for codeUnit in ghost.utf8 {
    print(codeUnit, terminator: " ")
}

print(" ")

for codeUnit in ghost.utf16 {
    print(codeUnit, terminator: " ")
}

print(" ")

for codeUnit in ghost.unicodeScalars {
    print(codeUnit, terminator: " ")
}
