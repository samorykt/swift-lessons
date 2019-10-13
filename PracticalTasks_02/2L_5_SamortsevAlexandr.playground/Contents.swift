import Cocoa

var resultArray1 = [Int]()
var resultArray2 = [Int]()

func fibo(n: Int) -> Int {
    var x: Int = 1
    var y: Int = 1
    if (n == 0) {
       return 0
    } else if (n == 1) {
        return 1
    } else {
        for _ in 2..<n {
           y = x + y
           x = y - x
        }
        return y
    }
}

print(fibo(n: 92))
print(Int.max)
print()

for _ in 1...100 {
    let randomNumber = Int.random(in: 0..<16)
    resultArray1.append(fibo(n: randomNumber))
}
print(resultArray1)
print()

// массив без повторяющихся и с нарастающими элементами
// имеет 93 элемента, т.к. дальше число Фибоначчи выходит
// за пределы типа Int
for i in 0...92 {
    resultArray2.append(fibo(n: i))
}
print(resultArray2)
print()
