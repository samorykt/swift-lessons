import Cocoa

/*func thisNumberIsEven(_ userNumber: Int) -> Bool {
    if (userNumber % 2 == 0) {
        return true
    } else {
        return false
    }
}
*/
func thisNumberIsEven(_ userNumber: Int) -> Bool {
    return (userNumber % 2 == 0)
}

let num = 12
if (thisNumberIsEven(num) == true) {
    print("Число \(num) четное")
} else {
    print("Число \(num) нечетное")
}
