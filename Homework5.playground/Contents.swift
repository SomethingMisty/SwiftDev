import Cocoa

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

protocol car: AnyObject {
    var model: String { get }
    var year: Int { get }
    var windows: windows { get set }
    var engine: engine  { get set }
}

enum engine: String {
    case turnedOn = "двигатель заведен"
    case turnedOff = "двигатель заглушен"
}

enum windows: String{
    case open = "окна закрыты"
    case closed = "окна открыты"
}

extension car {
    func window(status:windows){
        switch status {
        case .closed:
            self.windows = .closed  /// Записываем инпут в класс
            print(windows)
            
        case .open:
            self.windows = .open
            print(windows)
            
        }
    }
    func engine(status:engine){
        switch status {
        case .turnedOn:
            self.engine = .turnedOn
            print(engine)
        case .turnedOff:
            self.engine = .turnedOff
            print(engine)
        }
    }
}


class trunkCar: car {
    var engine: engine
    var model: String
    var year: Int
    var windows: windows
    var weight: Double
    var trunkWeight: Double
    var freeSpace: Double {
        get {
            return weight - trunkWeight
        }
    }
    func trunkConnect(status: Bool) -> String {
        if isTrunkConnected == true {
            let message = "Прицеп есть"
            return message
        } else {
            let message = "Прицепа нет"
            return message
        }
    }
    var isTrunkConnected: Bool
    

    init(model: String, year: Int, weight: Double, trunkWeight: Double, TrunkConnected: Bool){
        self.weight = weight
        self.trunkWeight = trunkWeight
        self.engine = .turnedOff
        self.windows = .closed
        self.model = model
        self.year = year
        self.isTrunkConnected = TrunkConnected
        
    }
}

class sportCar: car {
    var engine: engine
    var model: String
    var year: Int
    var windows: windows
    var maxSpeed: Int
    var doors: Int

   
    init(model: String, year: Int, weight: Double, maxSpeed: Int, doors: Int){
        self.maxSpeed = maxSpeed
        self.doors = doors
        self.engine = .turnedOff
        self.windows = .closed
        self.model = model
        self.year = year
        }
    }

extension trunkCar: CustomStringConvertible{
    var description: String {
        return "Машина \(model)\n" + "\(year) года" +
            "\(engine.rawValue), \(windows.rawValue), \(isTrunkConnected) и его вес сотавляет \(trunkWeight)кг. Максимальная же грузоподъемность = \(weight)"
    }
}

extension sportCar: CustomStringConvertible{
    var description: String {
        return "Машина \(model)\n" + "\(year) года" +
            "\(engine), \(windows). Имеет \(doors) двери \n" +
        "Максимальная скорость - \(maxSpeed)"
    }
}




var Ferrari = sportCar(model: "5", year: 1998, weight: 1200, maxSpeed: 350, doors: 2)
var Gazelle = trunkCar(model: "ГАЗ", year: 2004, weight: 5000, trunkWeight: 2000, TrunkConnected: true)

Ferrari.description
Gazelle.description
Ferrari.engine(status: .turnedOn)
Ferrari.window(status: .open)

Gazelle.trunkWeight = 0
Gazelle.weight = 3000

print(Ferrari)
print(Gazelle)


