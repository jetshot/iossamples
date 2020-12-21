/* strings are value types in Swift */

/* string declaration */

let message = "Hello"

var name = "World"

/* declaration with type annotation */

let department : String = "Computer Science"

/* initialising empty strings */

let emptyString = ""

let anotherEmptyString = String()

if emptyString.isEmpty {
    print("\(emptyString) is empty!!")
}

/* multiline string */

let multiLineString = """
Hello World,
This is a multiline string
"""

/* string concatenation */

print(message + ", " + name)

print("Hello, " + "World")

/* string interpolation */

let newString = "Hello, \(name)"

print(newString)

print("3 times 5 is equal to \(3 * 5)")

let number1 = 100

let number2 = 200

print("number1 + number2 is equal to \(number1 + number2)")

/* iterating through a string */

for char in newString {
    print(char)
}

/* iterating with string index */

for index in newString.indices {
    print(newString[index])
}

/* string index */

print(newString[newString.startIndex]) // prints H

print(newString[newString.index(before: newString.endIndex)]) // prints d

/* sub string */

let index = newString.index(of: "o")!

print(newString[...index]) // prints Hello

/* string length */

let length = newString.count

print("number of characters in newString is \(newString.count)")

/* string compare */

let firstString = "Hello"

let secondString = "Hello"

if firstString == secondString {
    print("\(firstString) and \(secondString) are equal")
}

/* prefix and suffix */

let tempString = "Swift is awesome!!"

if tempString.hasPrefix("Swift") {
    print("\(tempString) starts with Swift")
}

if tempString.hasSuffix("!!") {
    print("\(tempString) ends with !!")
}

/* updating strings */

var bonjour = "Bonjour"

bonjour.insert("!", at: bonjour.endIndex)

print(bonjour) // prints Bonjour!

bonjour.remove(at: bonjour.index(before: bonjour.endIndex))

print(bonjour) // prints Bonjour

/* string reverse */

print(String(bonjour.reversed())) // prints ruojnoB

/* Also, there are many higher order functions like map, reduce, flatMap, flatMap, filter, etc are available in String */
