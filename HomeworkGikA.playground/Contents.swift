import Foundation


/*
 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести значения свойств экземпляров в консоль.
 */

class car {
    enum engineStatus:CustomStringConvertible {
        case on
        case off
        
        var description: String{
            switch self {
            case .on:
                return "Заведен"
            case .off:
                return "Заглушен"
            }
        }
    }
    
    enum statusWindow:CustomStringConvertible {
        case opened
        case closed
        
        var description: String{
            switch self {
            case .opened:
                return "Открыты"
            case .closed:
                return "закрыты"
            }
        }
    }
    
    
    enum trunkType: CustomStringConvertible {
        case heavyWeight
        case lightWeight
        case noTrunk
        
        var description: String {
            switch self {
            case .heavyWeight:
                return "Кузов для тяж. грузов"
            case .lightWeight:
                return "Кузов для лег. грузов"
            case .noTrunk:
                return "Нет кузова"
            }
        }
        
    }
    
    enum isAction {
        case isEngine(engineStatus)
        case isWindow(statusWindow)
        case trunkLoad(Double)
        case whatTrunkType(trunkType)
    }
    
    let brand: String
    let year:Int
    var window: statusWindow = .closed
    var eng: engineStatus = .off
    
    
    init(brand: String, year: Int) {
        self.brand = brand
        self.year = year
    }
    
    func doAction(action:isAction){}

}


class heavyCar: car, CustomStringConvertible {
    let trunkSpace: Double
    var carcase: trunkType?
    
    var description: String {
        let _ = carcase?.description ?? "его нет"
        return "Машина \(brand), \(year) года выпуска, окна \(window), двигатель \(eng), занято \(trunkSpace)"
    }
    
     init(brand: String, year: Int, trunkSpace: Double, carcase: trunkType?) {
        self.carcase = carcase
        self.trunkSpace = trunkSpace
        super.init(brand: brand, year: year)
    }



    override func doAction(action: isAction) {
        switch action {
        case .isEngine(let status):
            eng = status
        case .isWindow(let status):
            window = status
        case .trunkLoad(let load):
            guard carcase != nil else {
                return
            }
        default:
            break
            }
        }
    }

class SportCar: car, CustomStringConvertible {
    
    var weightKG: Int = 1000
    
    var description: String {
        return "Машина \(brand ), \(year) года, Вес: \(weightKG), двигатель\(eng), окна \(window)"
    }
    
    init(brand: String, year: Int, weightKG: Int) {
        self.weightKG = weightKG
        super.init(brand: brand, year: year)
    }
    
    override func doAction(action: isAction) {
        switch action {
        case .isEngine(let status):
            eng = status
        case .isWindow(let status):
            window = status
        default:
            break
        }
    }
}

var Gazelle = heavyCar(brand: "Gazelle", year: 2010, trunkSpace: 20000, carcase: .lightWeight)

Gazelle.doAction(action: .trunkLoad(4000))
Gazelle.doAction(action: .isEngine(.on))
print(Gazelle)

var Lada = SportCar (brand: "Kalina", year: 2009, weightKG: 1500)
Lada.doAction(action: .isEngine(.off))
Lada.doAction(action: .isWindow(.opened))
Lada.description
print(Lada)

