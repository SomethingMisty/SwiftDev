import Foundation




enum isEngineOn: String {
    case on = "заведен"
    case off = "заглушен"
}
enum isWindowsOpen:String {
    case open = "открыты"
    case close = "закрыты"
}
enum isTrunk {
    case empty(empty: String)
    case full(full: String)
    case voluem(litres: Double)
}
struct SportCar {
    var Brand: String
    var Year: Int
    var fullVoluem: Double
    var Engine: isEngineOn
    var Windows: isWindowsOpen
    var Trunk: isTrunk
    
    mutating func modeWindows (action: isWindowsOpen) {
        switch action {
        case .open:
            print(action.rawValue)
            self.Windows = .open
        case .close:
            print(action.rawValue)
            self.Windows = .close
        }
    }
    
    mutating func modeEngine (action: isEngineOn) {
        switch action {
        case .on:
            print(action.rawValue)
            self.Engine = .on
        case .off:
            print(action.rawValue)
            self.Engine = .off
        }
    }
    
    func description() {
        print("Машина \(Brand), \(Year) года выпуска, двигатель \(Engine.rawValue) и окна \(Windows.rawValue)")
    }
}
   
struct TrunkCar {
    var Brand: String
    var Year: Int
    var fullVoluem: Double
    var Engine: isEngineOn
    var Windows: isWindowsOpen
    var Trunk: isTrunk
    
    mutating func modeWindows (action: isWindowsOpen) {
        switch action {
        case .open:
            print(action.rawValue)
            self.Windows = .open
        case .close:
            print(action.rawValue)
            self.Windows = .close
        }
    }
    mutating func modeEngine (action: isEngineOn) {
        switch action {
        case .on:
            print(action.rawValue)
            self.Engine = .on
        case .off:
            print(action.rawValue)
            self.Engine = .off
        }
    }
    func description() {
        print("Машина \(Brand), \(Year) года выпуска, двигатель \(Engine.rawValue) и окна \(Windows.rawValue)")
    }
}

var KiaRio = SportCar(Brand: "Kia Rio", Year: 2016, fullVoluem: 240, Engine: .off, Windows: .open, Trunk: .voluem(litres: 139))

var SmartMini = SportCar(Brand: "Smart Mini", Year: 2019, fullVoluem: 240.00, Engine: .on, Windows: .close, Trunk: .full(full: "багажник полон"))

var Gazel = TrunkCar(Brand: "Gazell", Year: 2008, fullVoluem: 30000.00, Engine: .on, Windows: .open, Trunk: .empty(empty: "кузов пуст"))

KiaRio.modeWindows(action: .close)
KiaRio.modeEngine(action: .on)
KiaRio.Year
KiaRio.Brand
KiaRio.Engine
SmartMini.modeEngine(action: .off)
SmartMini.modeWindows(action: .open)
SmartMini.Trunk
print(SmartMini.description())
print(KiaRio.description())
Gazel.Year
Gazel.modeEngine(action: .off)
Gazel.fullVoluem
print(Gazel.description())
