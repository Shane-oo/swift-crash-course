import Foundation

enum Animals{
    case cat, dog, rabbit
}

let cat = Animals.cat

if cat == Animals.cat {
    "Yep cat"
}
else if cat == Animals.dog {
    "Yep dog"
}


switch cat {
case .cat:
    break
case .dog:
    break

default:
    "this is something else"
}

enum Shortcut {
    case fileOrFolder(path: URL, name:String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https://apple.com")!
)

switch wwwApple {
case .fileOrFolder(path: let path,name: let name):
    path
    name
    break
case .wwwUrl(path: let path):
    path
    break
case .song(artist: let artist, songName: let songName):
    artist
    songName
}

switch wwwApple {
case .fileOrFolder(let path, let name):
    path
    name
    break
case .wwwUrl(let path):
    path
    break
case .song(let artist, let songName):
    artist
    songName
}


switch wwwApple {
case let .fileOrFolder(path, name):
    path
    name
    break
case let .wwwUrl(path):
    path
    break
case let .song(artist, songName):
    artist
    songName
}

if case let .wwwUrl(path) = wwwApple {
    path
}

let withoutYou = Shortcut.song(artist: "Symphony X", songName: "Without You")

if case let .song(_, songName) = withoutYou {
    songName
}


enum Vehicle {
    case car(manufacturer: String, model: String)
    case bike(manufacturer:String, yearMade: Int)
    
    var manufacturer: String {
        switch self {
        case let .car(manufacturer, _),
            let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

let car = Vehicle.car(manufacturer: "Tesla", model: "X")

let bike = Vehicle.bike(manufacturer: "HD", yearMade: 1987)

car.manufacturer



enum FamilyMember: String {
    case father = "Dad"
    case mother = "Mom"
    case brother = "Bro"
    case sister = "Sis"
}

FamilyMember.father.rawValue

enum FavEmoji: String, CaseIterable {
    case blush = "😳"
    case rocket = "🚀"
    case fire = "🔥"
}

FavEmoji.allCases
FavEmoji.allCases.map(\.rawValue)


if let blush = FavEmoji(rawValue: "😳"){
    "Found the blush emoji"
    blush
}

enum Height {
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}

var myHeight = Height.medium
myHeight.makeLong()
myHeight

indirect enum IntOperation {
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
}
