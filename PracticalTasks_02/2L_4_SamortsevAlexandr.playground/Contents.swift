import Cocoa

func thisNumberIsEven(_ userNumber: Int) -> Bool {
    return (userNumber % 2 == 0)
}

func thisNumberIsDivisibleByThreeWithoutRemainder(_ userNumber: Int) -> Bool {
    return (userNumber % 3 == 0)
}

var intArray1 = [Int]()
var intArray2 = [Int]()

for i in 1...100 {
    intArray1.append(i)
    intArray2.append(i)
}

// вариант 1
for i1 in (0..<intArray1.count).reversed() where ((thisNumberIsEven(intArray2[i1]) == true) || (thisNumberIsDivisibleByThreeWithoutRemainder(intArray2[i1]) == false)) {
    intArray1.remove(at: i1)
}
// вариант 2
for i2 in stride(from: intArray2.count-1, through: 0, by: -1) where ((thisNumberIsEven(intArray2[i2]) == true) || (thisNumberIsDivisibleByThreeWithoutRemainder(intArray2[i2]) == false)) {
    intArray2.remove(at: i2)
}

print(intArray1)
print(intArray2)
