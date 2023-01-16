import Foundation

// subscripts

struct TimesTable {
    let multipliyer: Int
    subscript(index: Int) -> Int {
        return multipliyer * index
    }
}

let threeTimesTables = TimesTable(multipliyer: 3)

print("6 x 3: \(threeTimesTables[6])")

for idx in 0...10 {
    print("3 x \(idx) = \(threeTimesTables[idx])")
}


enum Planet: Int {
    case mercury = 1, venus, earth, mars, jhupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        guard let somePlanet = Planet(rawValue: n) else {
            return Planet(rawValue: 1)!
        }
        return somePlanet
    }
}
let mars = Planet[4]
mars





// ejercdicio sobre matrices

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row < rows && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "index out of range")
            grid[(row * columns) + columns] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 1] = 1.5
matrix
    