import Cocoa

// вариант 1
var intArray1 = Array(1...100)
print(intArray1)
print()

// вариант 2
var intArray2 = [Int]()
for i in 1...100 {
    intArray2.append(i)
}
print(intArray2)
