import Cocoa

// 1) ax2 +bx + c = 0

let a: Double = 2
let b: Double = 12
let c: Double = 8

let koren1: Double
let koren2: Double
let d: Double = b*b - 4 * a * c

if (d == 0){
    koren1 = -b/2 * a
    let xx = String(format: "%.2f", koren1)
    print("В Данном уравнении 1 корень - \(xx)")
} else if (d > 0) {
    koren1 = -b + sqrt(d)/(2*a)
    koren2 = -b - sqrt(d)/(2*a)
    let xx = String(format: "%.2f", koren1)
    let yy = String(format: "%.2f", koren2)
    print("В данном уравнении 2 корня \(xx) и \(yy)")
    
} else {
    print("Корней, к сожалению нет")
}

//-------------------------------------------------------------
func QuadricFunc (A:Double, B:Double, C:Double) -> () {
    let D: Double = B*B - 4 * A * C
    switch D {
    case _ where D > 0:
       let koren1 = -B + sqrt(D)/(2*A)
       let koren2 = -B - sqrt(D)/(2*A)
        let x1 = String(format: "%.2f", koren1)
        let x2 = String(format: "%.2f", koren2)
        print("В данном уравнении 2 корня \(x1) и \(x2)")
        break
        
    case _ where D == 0:
        let koren1 = -B/2 * A
        let x1 = String(format: "%.2f", koren1)
        print("В Данном уравнении 1 корень - \(x1)")
        break
        
    default:
        print("Не имеет корней и решений")
    }
    //  Если можно подскажите каким образом вернуть результат case в функцию что бы в последствии можно было использовать функцию в коде
}
QuadricFunc(A: 9, B: 8, C: 1)


// 2) Катеты

let A:Double = 10
let B:Double = 6

let C: Double = sqrt(A*A + B*B)  // Гипотенуза
let P = A+B+C       // Периметр
let S = A*B/2  // Площадь
print("Гипотенуза ровна \(C), Периметр равен \(P), Площадь ровна \(S)")

// 3) Вклад в банк

let Sum: Double = 100000
var procent:Double = 4
procent  = procent / 100

var year1 = Sum + (Sum * procent)
var year2 = year1 + (year1 * procent)
var year3 = year2 + (year2 * procent)
var year4 = year3 + (year3 * procent)
var year5 = year4 + (year4 * procent)

let pereborchik = [year1,year2,year3,year4,year5]
var year = 1

for i in pereborchik {
    print("Сумма на \(year) год ставляет \(i)")
    year += 1
}






