import Cocoa



func Double (A: Int) {
    if (A % 2 == 0) {
        print("Делится")
    }else {
        print("Не делится")
    }
}

Double(A: 10)

func Triple (AA: Int) {
    if (AA % 3 == 0) {
        print("Делится")
    }else {
        print("Не делится")
    }
}

Triple(AA: 10)


var Massiv:[Int] = []

for i in 0...100 {
    Massiv.append(i)
}

//for (_, value) in Massiv.enumerated() {
//    if (value % 2 == 0) {
//        Massiv.remove(at: Massiv.firstIndex(of: value)!)
//    } else if (value % 3 > 0){
//        Massiv.remove(at: Massiv.firstIndex(of: value)!)
//    }
//}
//print(Massiv)

for (_, value) in Massiv.enumerated() {
    if (value % 2 == 0) || (value % 3 > 0) {
        Massiv.remove(at: Massiv.firstIndex(of: value)!)
    }
}

print(Massiv)

