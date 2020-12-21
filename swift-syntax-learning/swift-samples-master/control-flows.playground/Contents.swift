/* conditional statements - if, else */

let number1 = 100

let number2 = 200

var max1 : Int?

if number1 > number2 {
    max1 = number1
} else {
    max1 = number2
}

print("Maximum of \(number1) and \(number2) is \(max1!)")

/* ternary operator */

max1 = nil

max1 = number1 > number2 ? number1 : number2

print("Maximum of \(number1) and \(number2) is \(max1!)")

/* multi branch if else */

let mark = 87

if mark > 90 {
    print("A Grade")
} else if mark > 75 {
    print("B Grade")
} else if mark > 60 {
    print("C Grade")
} else {
    print("D Grade")
}

/* the powerful switch statement */

switch number1 {
case 1..<10 :
    print("between 1 and 10")
case 10..<50 :
    print("between 10 and 50")
case 50..<100 :
    print("between 50 and 100")
default :
    print("equal or greater than 100")
}

/* switch and value binding + where clause */

let httpStatus = (404, "PAGE NOT FOUND")

switch httpStatus {
case (100..<200, let status):
    print("Informational status: \(status)")
case (200..<300, let status):
    print("Success status: \(status)")
case (300..<400, let status):
    print("Redirection status: \(status)")
case (400..<500, let status):
    print("Client error: \(status)")
case (500..<600, let status):
    print("Server error: \(status)")
case (let code, let status) where code == 999 || code == 998:
    print("\(code) : \(status) - SPECIAL STATUS")
case (_,_):
    print("Its a default case")
}

/* compound switch cases */

let char = "A"

switch char {
case "A", "a", "E", "e", "I", "i", "O", "o", "U", "u":
    print("\(char) is a vowel")
default:
    print("\(char) is a consonant")
}

/* switch with fallthrough */

let num = 5

switch num {
case 1,3,5,9:
    print ("\(num) is a single digit odd number")
    fallthrough
default:
    print("\(num) is also a number")
}

/* guard statement */

let numbers : [Int?] = [10, 20, 30, nil, 40, 50, 60]

/* prints 10, 20, 30, 40, 50, 60 */

for number in numbers {
    guard let num = number else {
        continue
    }
    print(num)
}

/* prints 10, 20, 30 */

for number in numbers {
    guard let num = number else {
        break
    }
    print(num)
}
