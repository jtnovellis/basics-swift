import UIKit

// 1. global
// 2. nested function
// 3. CLOSURE

let names = ["cristian", "ricardo", "jairo", "juan", "jesus"]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedNames = names.sorted(by: backward)

/*
 los clousures no tienen la palabra func la sintaxis es esta
 
 { (params) -> return type in
 // Codigo del closure
 }
 */
reversedNames = names.sorted(by: >)


// trailing closure

func stakeAClosure(clousure: () -> Void){
    // aqui va el cuerpo de la funcion
}

stakeAClosure(clousure: {
    // aqui iria el cuerpo del closure
})

stakeAClosure {
    // esta es una variante de la sintaxis del closure
}

let digitNames = [0: "cero", 1: "uno", 2: "dos", 3: "tres", 4: "cuatro", 5: "cinco", 6: "seis", 7: "siete", 8: "ocho", 9: "nueve"]
let numbers = [12, 43, 2435, 432, 654, 98]

let numberStrings = numbers.map {(number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    return output
}
numberStrings

// capturing closures

func increment(forIncrement amout: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer () -> Int {
        runningTotal += amout
        return runningTotal
    }
    return incrementer
}
let incrementByTen = increment(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = increment(forIncrement: 7)
incrementBySeven()
incrementBySeven()


// escaping closure

var completionHandlers: [() -> Void] = []

func escapingClosure(completion: @escaping () -> Void) {
    completionHandlers.append(completion)
}

completionHandlers.count

func nonEscapingClosure(closure: () -> Void) {
    closure()
}


class SomeClass {
    var h = 10
    
    func doSome() {
        escapingClosure {
            self.h = 100
        }
        nonEscapingClosure {
            h = 100
        }
    }
}

let instance = SomeClass()
instance.h
instance.doSome()
instance.h
