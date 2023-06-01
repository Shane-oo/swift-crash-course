import Foundation

// don't have to create constructor
struct Person {
    let name: String
    let age: Int
}

let person = Person(
    name: "Shane",
    age: 23
)

person.name
person.age

struct CommodoreComputer {
    let name: String
    let manufacturer: String
    
    init(name: String){
        self.name = name
        self.manufacturer = "Commodore"
    }
}

let c64 = CommodoreComputer(name: "C64")

c64.name
c64.manufacturer

struct Person2 {
    let firstName: String
    let lastName: String
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

let person2 = Person2(firstName: "Shane", lastName: "Monck")

person2.fullName


struct Car {
    var currentSpeed: Int
    mutating func drive(speed: Int){
        "Driving..."
        currentSpeed = speed
    }
}

var mutableCar = Car(currentSpeed: 20)

let copy = mutableCar
mutableCar.drive(speed: 30)

mutableCar.currentSpeed
copy.currentSpeed

struct LivingThing {
    init(){
        "Im a living thing"
    }
}
//
//struct Animal: LivingThing {
//
//}

struct Bike{
    let manufacturer: String
    let currentSpeeed: Int
    
    func copy(currentSpeed: Int) -> Bike{
        Bike(manufacturer: self.manufacturer, currentSpeeed: currentSpeed)
    }
}

let bike1 = Bike(manufacturer: "HD", currentSpeeed: 20)

let bike2 = bike1.copy(currentSpeed: 30)

bike1.currentSpeeed
bike2.currentSpeeed
