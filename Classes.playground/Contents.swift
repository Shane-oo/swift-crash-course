import Foundation

class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func increaseAge(){
        self.age += 1
    }
}

let person = Person(name: "Shane", age: 23)

person.age
person.increaseAge()
person.age

let person2 = person

person2.increaseAge()
person.age
person2.age

if person === person2 {
    "Point to the same memory"
}


class Vehicle {
    func goVroom(){
        "Vroom Vroom"
    }
}

class Car: Vehicle {
    
}

let car = Car()

car.goVroom()

class Person2 {
    private(set) var age: Int
    init(age:Int){
        self.age = age
    }
    
    func increaseAge(){
        self.age += 1
    }
}

let baz = Person2(age : 23)

baz.age
//baz.age += 1
baz.increaseAge()
baz.age


class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year : Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    
    init(model: String, year: Int) {
        self.model = model
        self.year = year
    }
    
    convenience init(model: String) {
        self.init(model: model, year: 2023)
    }
}

class TeslaModelY : Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.manufacturer
modelY.year


let fooBar = Person2(age: 23)
fooBar.age
func doSomething(with person: Person2){
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age

class MyClass {
    init(){
        "Initialized"
    }
    
    func doSomething(){
        "do something"
    }
    
    deinit {
        "Deinitizalized"
    }
}

let myClosure = {
    let myClass = MyClass()
    myClass.doSomething()
}

myClosure()
