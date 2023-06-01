import Foundation


func noArgumentsAndNoReturnValues(){
   print("I don't know what im doing")
}

noArgumentsAndNoReturnValues()

func plusTwo(value: Int){
    value + 2
}

var value = 1

plusTwo(value: value)


// return implicit
func newPlusTwo(value:Int) -> Int{
    value + 2
}

newPlusTwo(value: 30)

func customAdd(value1:Int,value2:Int)-> Int{
    value1 + value2
}

customAdd(value1: 1, value2: 2)


func customMinus(_ lhs:Int,_ rhs:Int) -> Int{
    lhs - rhs
}

let customSubtracted = customMinus(10, 29)

customAdd(value1: 20, value2: 30)

@discardableResult
func myCustomAdd(_ lhs:Int,_ rhs:Int) -> Int{
    lhs + rhs
}

myCustomAdd(29, 10)

func doSomethingCompicated(with value:Int) -> Int{
    func mainLogic(value:Int) -> Int{
        value + 2
    }
    return mainLogic(value: value + 3)
}
doSomethingCompicated(with: 10)

func getFullName(firstName:String = "Foo", lastName:String = "bar") -> String{
    "\(firstName) \(lastName)"
}
getFullName()
getFullName(firstName: "Shane")
getFullName(lastName: "Monck")
getFullName(firstName: "Shane",lastName: "Monck")


