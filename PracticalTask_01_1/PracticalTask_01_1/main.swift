//
//  main.swift
//  PracticalTask_01_1
//
import Foundation

func isFloat(userString: String) -> Bool {
    var countOfDots = 0
    var countNotNumbersOrDot = 0
    var theMinusSignIsInFront = true
    let inputStringArray = Array(userString)
    
    for i in 0..<inputStringArray.count {
        if floatSymbols.contains(inputStringArray[i]) == false{
            countNotNumbersOrDot += 1
        }
        if inputStringArray[i] == "." {
            countOfDots += 1
        }
        if (inputStringArray[i] == "-") && (i > 0) {
            theMinusSignIsInFront = false
        }
    }
    if (countNotNumbersOrDot > 0) || (countOfDots > 1) || (theMinusSignIsInFront == false) {
        return false
    } else {
        return true
    }
}

func getUserData() -> (errorText: String, floatValue: Float) {
    let str = readLine()!
    if (isFloat(userString: str) == false) {
        let errorText = "Ошибка: недопустимое значение! Должно быть целое или дестичное число."
        let floatValue = 0
        return (errorText, Float(floatValue))
    } else {
        let errorText = "noError"
        let floatValue = (str as NSString).floatValue
        return (errorText, floatValue)
    }
}

let floatSymbols: [Character] = ["0","1","2","3","4","5","6","7","8","9",".","-"]
let a, b, c, Discr, x1, x2: Float

print("Введите коэффициенты для квадратного уравнения (a*x^2 + b*x + c = 0): ")

print("a = ", terminator: "")
let userData1 = getUserData()
if (userData1.errorText == "noError") {
    a = userData1.floatValue
} else {
    print(userData1.errorText)
    exit(0)
}
print("b = ", terminator: "")
let userData2 = getUserData()
if (userData2.errorText == "noError") {
    b = userData2.floatValue
} else {
    print(userData2.errorText)
    exit(0)
}
print("c = ", terminator: "")
let userData3 = getUserData()
if (userData3.errorText == "noError") {
    c = userData3.floatValue
} else {
    print(userData3.errorText)
    exit(0)
}

Discr = b*b - 4 * a * c
print("Дискриминант D = \(Discr)")
print()

if (Discr > 0) {
    x1 = (-b + sqrtf(Discr)) / (2 * a)
    x2 = (-b - sqrtf(Discr)) / (2 * a)
    print("Уравнение имеет 2 корня: x1 = \(x1) и x2 = \(x2)")
} else if (Discr == 0) {
    x1 = -b / (2 * a)
    print("Уравнение имеет один корень: x = \(x1)")
} else {
    print("Уравнение не имеет корней!")
}
print()
