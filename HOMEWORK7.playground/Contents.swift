import Cocoa

enum MixerError: Error {
    case TooManyFruit
    case MixerDefaultError(error:Int)
    case NoFruitAvailable
}



struct Fruit {
    var nameOf: String
    var numberOf: Int
}



class Mixer {
    var FruitLoad = [
        "Банан": Fruit(nameOf: "Банан", numberOf: 3),
        "Яблоко": Fruit(nameOf: "Яблоко", numberOf: 5),
        "Груша": Fruit(nameOf: "Груша", numberOf: 10)
    ]
    var numberLoad = 5
    var DefaultErr = 0
    func downloadItem(ItemNamed name: String, error: Int) throws {
        guard let fruit = FruitLoad[name] else {
            throw MixerError.NoFruitAvailable
        }
        
        guard fruit.numberOf < numberLoad else {
            throw MixerError.TooManyFruit
        }
        
        guard error == 200 else {
            throw MixerError.MixerDefaultError(error: DefaultErr)
        }
        
        print("Миксер взбил \(name), количеством \(fruit.numberOf) штук")
    }
}



let ChooseMyFruit = [
    "Mama": "Банан",
    "Papa": "Яблоко",
    "Я": "Груша"
]

func fruitChoosing(member: String, fruits: Mixer) throws {
    let memberName = ChooseMyFruit[member] ?? "Груша"
    try fruits.downloadItem(ItemNamed: memberName, error: 0)
}

var Mama = Mixer()

do {
    try fruitChoosing(member: "Mama", fruits: Mama)
} catch MixerError.NoFruitAvailable {
    print("Нет такго фрукта, сори")
} catch MixerError.TooManyFruit {
    print("Слишком много фруктов, миксер не вывезет")
} catch MixerError.MixerDefaultError(let ErrorCode) {
    print("Ошибка Миксера \(ErrorCode)")
}
