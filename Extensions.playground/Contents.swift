import Foundation

extension Int{
    func plusTwo() -> Int {
        self + 2
    }
}

let two = 2
two.plusTwo()

struct Person{
    let firstName: String
    let lastName: String
}

extension Person{
    init(fullName: String){
        let components = fullName.components(separatedBy: " ")
        self.init(firstName: components.first ?? fullName,
                  lastName: components.last ?? fullName)
    }
}
let person = Person(fullName: "Shane Monck")

protocol GoesVroom {
    var vroomsValue: String { get }
    func goVroom() -> String
}
extension GoesVroom {
    func goVroom() -> String{
        "\(self.vroomsValue) goes Vroom!"
    }
}

struct Car {
    let manufacturer: String
    let model: String
}

let modelX = Car(manufacturer: "Tesla", model: "X")

extension Car: GoesVroom {
    var vroomsValue: String {
        "\(self.manufacturer) model \(self.model)"
    }
}

modelX.goVroom()

class MyDouble {
    let value: Double
    init(value: Double){
        self.value = value
    }
}

extension MyDouble {
    convenience init() {
        self.init(value: 0)
    }
}

let myDouble = MyDouble()
myDouble.value

extension GoesVroom{
    func goVroomEvenMore() -> String {
        "\(self.vroomsValue) is vrooming even more"
    }
}

modelX.goVroomEvenMore()
