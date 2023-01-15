import UIKit

func greeting(person: String) -> String {
    let greet = "hola \(person)"
    return greet
}

greeting(person: "Jairo")
greeting(person: "Naya")


func sayHelloWorld() -> String {
    return "Hello World"
}

sayHelloWorld()

func greet(person: String, isMale: Bool) -> String {
    if isMale {
        return "bienvenido senior \(person)"
    } else {
        return "bienvenida seniorita \(person)"
    }
}

greet(person: "Ricado", isMale: true)


func someFunction(f1 numberName: Int, f2 secondNumber: Int = 5) {
    print(numberName + secondNumber)
}

someFunction(f1: 5)

func saludar(_ person: String, from homeTown: String) -> String {
    return "Hola \(person) un placer que nos visites desde \(homeTown)"
}

saludar("Jairo", from: "Barranquilla")


func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

mean(1,2,3,4,5,6)

var x = 5
func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("el numero ahora vale \(number2)")
}

addOne(number: x)

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7

swapTwoInts(&someInt, &otherInt)


func addition(_ a: Int, _ b: Int) -> Int {
    return a + b
} // (Int, Int) -> Int

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
} // (Int, Int) -> Int

var mathFunction: (Int, Int) -> Int = addition

mathFunction(4,5)


func printMathresult(_ math: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("result: \(math(a,b))")
}

printMathresult(mathFunction, 4, 3)




func chooseStep(backward: Bool) -> (Int) -> Int {
    func stepForward(_ input: Int) -> Int {
        return input + 1
    }
    func stepBackward(_ input: Int) -> Int {
        return input - 1
    }
    return backward ? stepBackward : stepForward
}

var value = 7
let moveToZero = chooseStep(backward: value > 0)

while value != 0{
    print("num: \(value)")
    value = moveToZero(value)
}

print("Cero!")

