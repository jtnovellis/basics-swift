import Foundation

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    var address: Address?
    
    func printNumberOfRooms() {
        print("el numero de habitaciones es \(numberOfRooms)")
    }
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber), \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}



let edgar = Person()
if let roomCount = edgar.residence?.numberOfRooms {
    print("the jairo's house has \(roomCount) rooms")
} else {
    print("Jarito has not house")
}

func createAddress() -> Address {
    print("creating address")
    
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street = "Calle Platzi"
    
    return someAddress
}

edgar.residence?.address = createAddress()
edgar.residence?.printNumberOfRooms()

if edgar.residence?.printNumberOfRooms() != nil {
    print("he podido obtener el numero de habitaciones")
} else {
    print("no ha sido posible saber el numero de habitaciones")
}

if (edgar.residence?.address = createAddress()) != nil {
    print("ha sido posible configurar la direccion de edgar")
} else {
    print("seguimos sin sabaer donde vive edgar")
}

if let firstRoomName = edgar.residence?[0].name {
    print("la primera habitacion es de \(firstRoomName)")
} else {
    print("la primera habitacion no sabemos de quien es")
}

edgar.residence?[0] = Room(name: "bathroom")

let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "bathroom"))
edgarHouse.rooms.append(Room(name: "living room"))
edgarHouse.rooms.append(Room(name: "kitchen"))
edgar.residence = edgarHouse


if let firstRoomName = edgar.residence?[0].name {
    print("la primera habitacion es de \(firstRoomName)")
} else {
    print("la primera habitacion no sabemos de quien es")
}

edgar.residence?.address = createAddress()

//Optional Chaining múltiple
if let edgarStreet = edgar.residence?.address?.street {
    print("la casa de edgar esta en la calle \(edgarStreet)")
} else {
    print("no se donde vive edgar")
}

edgar

if let buildingIdentifier = edgar.residence?.address?.buildingIdentifier() {
    print("edgar vive \(buildingIdentifier)")
}

if let _ = edgar.residence?.address?.buildingIdentifier()?.hasPrefix("13") {
    print("edgar vive en el numero 13")
} else {
    print("edgar no vive en el numero 13")
}
