import Cocoa

func thisNumberIsDivisibleByThreeWithoutRemainder(_ userNumber: Int) -> Bool {
    return (userNumber % 3 == 0)
}

let num = 11
if (thisNumberIsDivisibleByThreeWithoutRemainder(num) == true) {
    print("Число \(num) делится на 3 без остатка")
} else {
    print("Число \(num) делится на 3 с остатком")
}
