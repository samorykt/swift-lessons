import Cocoa

let N = 100
var myArray = [Int]()
var resultArray = [Int]()

for i in 2...N {
    myArray.append(i)
}
print("Первичный массив:")
print(myArray)
print()

var p = 2
while (p * p <= N) {
    for n in p..<myArray.count {
        if (myArray[n] % p == 0) {
           myArray[n] = 0
        }
    }
    p += 1
}
for value in myArray {
    if (value != 0) {
        resultArray.append(value)
    }
}
print("Количество простых чисел, меньших заданного числа N=\(N), следуя методу Эратосфена равно \(resultArray.count)")
print("Результат:")
print(resultArray)
