/* variables */

let numbers = [10, 67, 50, 40, 100, 98, 8, 56, 44]

let number1 = 100

let number2 = 200

let inputName = "John"

/* functions in swift */

func sayHello(to name: String) -> String {
    return "Hello, \(name)"
}

func add(_ number1 : Int, _ number2 : Int) -> Int {
    return number1 + number2
}

func times(_ number1 : Int, times number2 : Int) -> Int {
    return number1 * number2
}

/* calling functions */

print(sayHello(to: inputName))

let sum = add(number1, number2)

print("Sum of \(number1) and \(number2) is \(sum)")

let tenTimesFive = times(10, times: 5)

print("10 times 5 is \(tenTimesFive)")

/* returning tuple from functions */

func getMinMax(of numList : [Int]) -> (min : Int, max : Int)? {
    if numList.isEmpty {
        return nil
    }
    var min = numList[0]
    var max = numList[0]
    for index in 1..<numList.count {
        if numList[index] < min {
            min = numList[index]
        } else if numList[index] > max {
            max = numList[index]
        }
    }
    return (min, max)
}

if let (min, max) = getMinMax(of: numbers) {
    print("min : \(min)")
    print("max : \(max)")
}

/* default parameters */

func sayHelloWithDefault(to name : String = "World") {
    print("Hello, \(name)")
}

print(sayHelloWithDefault()) /* prints Hello, World */

print(sayHelloWithDefault(to: inputName)) /* prints Hello, John */

/* variadic parameters */

func getStats(of numberList : Int...) -> (sum : Int, average : Double, min : Int, max : Int)? {
    if numberList.isEmpty {
        return nil
    }
    let sum = numberList.reduce(0, { num1, num2 in num1 + num2 })
    let average = Double(sum / numberList.count)
    let (min, max) = getMinMax(of: numberList)!
    return (sum, average, min, max)
}

if let stats = getStats(of: 10, 20, 30, 40, 50, 60, 70, 80, 90, 100) {
    print("Sum: \(stats.sum), Average: \(stats.average), Min: \(stats.min), Max: \(stats.max)")
}

/* in out parameters */

var input = "This is input string"

/* constants cannot be passed as inout parameter and inout parameters cannot have default value */

func modifyString(_ input : inout String) {
    input = "Input string is modified inside the function"
}

modifyString(&input)

print(input) /* prints Input string is modified inside the function */

/* recursive and nested functions */

func factorial(of number: Int) -> Int {
    func fact(_ acc : Int, _ n: Int) -> Int {
        if n == 0 || n == 1 {
            return acc
        } else {
            return fact(acc * n, n - 1)
        }
    }
    return fact(1, number)
}

print(factorial(of: 5))

/* higher order function - functions that take other functions as parameters and returns function */

func calculate(operation: (Int, Int) -> Int, operand1 : Int, operand2: Int) -> Int {
    return operation(operand1, operand2)
}

let sum1 = calculate(operation: add, operand1: 10, operand2: 20)

let times1 = calculate(operation: times, operand1: 10, operand2: 20)

print(sum1) /* prints 30 */

print(times1) /* prints 200 */
