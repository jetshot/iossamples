/* for loop for iterating arrays */

let numbers = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

for number in numbers {
    print(number)
}

/* for loop for iterating dictionaries */

let names = [1 : "John", 2 : "James", 3 : "Joe", 4 : "Sam"]

for (id, name) in names {
    print("\(id) - \(name)")
}

/* iterating over ranges */

for number in 1...10 {
    print(number)
}

for number in 1..<10 {
    print(number)
}

/* step 2 */

for number in stride(from: 1, to: 10, by: 2) {
    print(number)
}

for number in stride(from: 1, through: 10, by: 2) {
    print(number)
}

/* while - top tested loop */

var number = 123456789

var reverse = 0

var temp : Int

while number > 0 {
    temp = number % 10
    reverse = reverse * 10 + temp
    number /= 10
}

print("Reverse is \(reverse)")

/* repeat while - bottom tested loop - body of loop will be executed at least once */

var i = 0

repeat {
    print(i)
    i = i + 1
} while i <= 10

/* break and continue */

let nameList : [String?] = ["John", "Sam", nil, "Joe", "Jack"]

for name in nameList {
    guard let actualName = name else {
        break
    }
    print(actualName)
}

for name in nameList {
    guard let actualName = name else {
        continue
    }
    print(actualName)
}
