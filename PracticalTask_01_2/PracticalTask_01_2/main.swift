//
//  main.swift
//  PracticalTask_01_2
//

import Foundation

func isFloat(userString: String) -> Bool {
    var countOfDots = 0
    var countNotNumbersOrDot = 0
    let inputStringArray = Array(userString)
    
    for i in 0..<inputStringArray.count {
        if floatSymbols.contains(inputStringArray[i]) == false{
            countNotNumbersOrDot += 1
        }
        if inputStringArray[i] == "." {
            countOfDots += 1
        }
    }
    if (countNotNumbersOrDot > 0) || (countOfDots > 1) {
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

let floatSymbols: [Character] = ["0","1","2","3","4","5","6","7","8","9","."]
let a, b, c, P, S: Float

print("Введите значения катетов прямоугольного треугольника (a и b): ")

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
print()

c = sqrtf(a*a + b*b)
print("Гипотенуза прямоугольного треугольника c = \(c)")
print()

P = a + b + c
print("Периметр прямоугольного треугольника P = \(P)")
print()

S = a * b / 2.0
print("Площадь прямоугольного треугольника S = \(S)")
print()
