/* Dictionary is an unordered key value pair collection in Swift */

/* Initialising dictionaries */

let names1 = [Int : String]()

let names2 : [Int : String] = [:]

let names3 = [1 : "James", 2 : "John", 3 : "Joe", 4 : "Sam"]

let names4 : Dictionary<Int, String> = [:]

/* iterating dictionaries */

if names3.isEmpty {
    print("names3 is empty") /* will not be printed */
}

if names1.isEmpty {
    print("names1 is empty") /* will be printed */
}

print("number of key value pair in names3 is \(names3.count)")

for (id, name) in names3 {
    print("id: \(id), name: \(name)")
}

for id in names3.keys {
    print(id)
}

for name in names3.values {
    print(name)
}

/* modifying dictionaries */

var numbers = [1 : "One", 2 : "Two", 3 : "Three", 4 : "Four", 5 : "Five"]

numbers[6] = "Six"

numbers[7] = "Seven"

if let oldValue = numbers.updateValue("OneOne", forKey: 1) {
    print("oldValue is \(oldValue)")
}

numbers[1] = nil

numbers[1] = "One"

/* higher order functions */

let values = numbers.map { $0.value }

print(values)

let even = numbers.filter { key, value in key % 2 == 0 }

print(even)

numbers.forEach { key, value in print("key \(key), value \(value)") }

/* other functions */

print(numbers.popFirst() ?? "not available")

print(numbers.sorted { $0.0 < $1.0 })
