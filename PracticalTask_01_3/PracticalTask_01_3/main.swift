//
//  main.swift
//  PracticalTask_01_3
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
var deposit, stavka: Float
let srok = 5

print("Найти сумму вклада через 5 лет. Ввод исходных данных:")

print("Введите сумму вклада = ", terminator: "")
let userData1 = getUserData()
if (userData1.errorText == "noError") {
    deposit = userData1.floatValue
} else {
    print(userData1.errorText)
    exit(0)
}
print("Введите годовой процент = ", terminator: "")
let userData2 = getUserData()
if (userData2.errorText == "noError") {
    stavka = userData2.floatValue
} else {
    print(userData2.errorText)
    exit(0)
}
print()

var i = 0
var Summa: Float = deposit

while i < 5 {
    Summa = Summa + (deposit * stavka) / 100
    i += 1
}
//Summa = deposit + (1 + stavka) * Float(srok)
print("Сумма вклада через \(srok) будет составлять: \(Summa)")
print()

