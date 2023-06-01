import Foundation

func multiplyByTwo(_ value: Int? = nil) -> Int {
    if let value {
        return value * 2
    }
    else {
        return 0
    }
}

multiplyByTwo()
multiplyByTwo(nil)
multiplyByTwo(2)

let age: Int? = nil
if age != nil {
    "Age is there"
}
else {
    "Age is nil"
}

if let age {
    "Age is there"
}
else {
    "Age is nill"
}

func checkAge() {
    guard age != nil else {
        "Age is nil"
        return
    }
    "Age is not nil"
}

checkAge()

let age2: Int? = 0

func checkAge2() {
    guard let age2 else{
        "Age is nil"
        return
    }
    let x = age2
    // x is Int
    "Age2 is not nil"
}

checkAge2()


switch age {
    case .none:
        "Age has no value"
        break
    case let .some(value):
        "Age has the value of \(value)"
}

// dont have to check if nil before comparision
if age2 == 0 {
    "age is 0"
}
else{
    "age is not 0"
}

// lil more descriptive
if age2 == .some(0){
    "age is 0"
}
else {
    "Age is not 0"
}

struct Person {
    let name: String
    let address: Address?
    struct Address {
        let firstLine: String?
    }
}

let foo: Person = Person(name: "Shane", address: nil)


if let fooFistAddressLine = foo.address?.firstLine {
    fooFistAddressLine
}
else {
    "Foo doesnt have an address with first line"
}

if let fooAddress = foo.address,
   let firstLine = fooAddress.firstLine {
    fooAddress
    firstLine
}

let bar: Person? = Person(name: "Shane1", address: Person.Address(firstLine: nil))
    

if bar?.name == "Shane1",
   bar?.address?.firstLine == nil{
    "Bar name is Shane1 and has no first line of address"
}
else {
    "seems like somthing isnt working right"
}

let baz: Person? = Person(
    name: "Shane1",
    address: Person.Address(firstLine: "First Line")
)

switch baz?.address?.firstLine {
case let .some(firstLine) where firstLine.starts(with: "First"):
    "Baz first address line = \(firstLine)"
    break
case let .some(firstLine):
    "Baz first address line that didnt match prev case"
    firstLine
    break
case .none:
    "baz first address line is nul??"
}

func getFullName(firstName: String, lastName: String?) -> String?{
    if let lastName {
        return "\(firstName) \(lastName)"
    }
    else{
        return nil
    }
}

func getFullName2(firstName: String, lastName: String?) -> String?{
    guard let lastName else {
        return nil
    }
    return "\(firstName) \(lastName)"
}



