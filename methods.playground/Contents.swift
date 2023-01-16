import Foundation

class Counter {
    var count = 0
    func increment(){
        self.count += 1
    }
    func incrementBy(amount: Int) {
        self.count += amount
    }
    func reset(){
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
counter.increment()
counter.increment()
counter.increment()
counter.increment()
counter.count
counter.incrementBy(amount: 10)
counter.count

struct Point {
    var x = 0.0
    var y = 0.0
    func isToRight(of x: Double) -> Bool {
        return self.x > x
    }
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
}

var point = Point(x: 4, y: 5)
point.isToRight(of: 2)
point.moveBy(x: 6, y: 9)



/*
 los mautating methods se aplican a las structs y enums para poder cambiar los valores
 con una funcion dentro
 -> Palabra reservada "mutating"
 
 ejemplo de sintaxis
 
 struct Point {
     var x = 0.0
     var y = 0.0
     func isToRight(of x: Double) -> Bool {
         return self.x > x
     }
     mutating func moveBy(x deltaX: Double, y deltaY: Double) {
         self.x += deltaX
         self.y += deltaY
     }
 }
 */

// metodos de clase

class NewClass {
    class func method() {
        print("Hola")
    }
}

NewClass.method()


struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    static func isUnlocked(_ level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    init(name: String) {
        self.playerName = name
    }
}

var player = Player(name: "Jairo Toro")
player.complete(level: 1)
player
if player.tracker.advance(to: 7) {
    print("podemos avanzar hasya el nivel 7")
} else {
    print("el nivel 7 sigue bloqueado por ahora")
}
