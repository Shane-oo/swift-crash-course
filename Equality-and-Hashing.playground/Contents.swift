import Foundation

struct Person: Equatable {
    let id: String
    let name: String
}

let foo1 = Person(id: "1", name: "Shane")
let foo2 = Person(id: "1", name: "NotShane")

if foo1 == foo2 {
    "They are equal!"
}
else {
    "They are not equal"
}

//extension Person {
//    static func == (lhs: Self, rhs: Self) -> Bool {
//        lhs.id == rhs.id
//    }
//}

enum AnimalType: Equatable {
    case dog(breed: String)
    case cat(breed: String)
}

// swift do it for you but you can write it yourself if needs
//extension AnimalType: Equatable {
//    static func == (lhs: Self, rhs: Self) -> Bool {
//        switch (lhs, rhs){
//        case let (.dog(lhsBreed),.dog(rhsBreed)),
//            let (.cat(lhsBreed), .cat(rhsBreed)):
//            return lhsBreed == rhsBreed
//        default:
//            return false
//        }
//    }
//}


struct Animal: Equatable {
    let name: String
    let type: AnimalType
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.type == rhs.type
    }
}

let cat1 = Animal(name: "Whiskers", type: AnimalType.cat(breed: "Street Cat"))
let cat2 = Animal(name: "Whoosh", type: AnimalType.cat(breed: "Street Cat"))

if cat1 == cat2 {
    "cats have same type"
}
else {
    "They are not equal"
}
//let dog = AnimalType.dog(breed: "Labradoodle")
//let dog2 = AnimalType.dog(breed: "Labradoodle")
//
//if dog == dog2 {
//    "They are Equal"
//} else {
//    "They are not equal"
//}








struct House: Hashable {
    let number: Int
    let numberOfBedrooms: Int
}

let house1 = House(number: 123, numberOfBedrooms: 2)

house1.hashValue

let house2 = House(number: 123, numberOfBedrooms: 3)

house2.hashValue

let houses = Set([house1, house2])
houses.count

struct NumberedHouse: Hashable {
    let number: Int
    let numberOfBedrooms: Int
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(number)
    }
    
    static func == (lhs:Self,rhs:Self)->Bool {
        lhs.number == rhs.number
    }
}

let house3 = NumberedHouse(number: 123, numberOfBedrooms: 2)
let house4 = NumberedHouse(number: 123, numberOfBedrooms: 3)

let houses3And4 = Set([house3, house4])

houses3And4.count
house3.hashValue
house4.hashValue
house3.number.hashValue
house4.number.hashValue


enum CarPart {
    case roof
    case tire
    case trunk
}

let uniqueParts: Set<CarPart> = [
    CarPart.roof,
    CarPart.tire,
    CarPart.roof,
    CarPart.trunk
]

enum HouseType: Hashable {
    case bigHouse(NumberedHouse)
    case smallHouse(NumberedHouse)
}

let bigHouse1 = HouseType.bigHouse(
        NumberedHouse(number: 1, numberOfBedrooms: 1)
    )


let bigHouse2 = HouseType.bigHouse(
    NumberedHouse(number: 1, numberOfBedrooms: 1)
)

let smallHouse1 = HouseType.smallHouse(
    NumberedHouse(number: 1, numberOfBedrooms: 1)
)

let allHouses: Set<HouseType> = [
    bigHouse1,
    bigHouse2,
    smallHouse1
]
allHouses.count



