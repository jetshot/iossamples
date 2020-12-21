/* arrays - ordered collection */

/* Empty array initialization */

var names1 = [String]()

var names2 : [String] = []

var names4 : Array<String> = []

/* constant array cannot be modified by adding/removing items */

let constantArray = ["James", "John", "Joe", "Sam"]

/* array iteration */

var names3 = ["James", "John", "Joe", "Sam"]

for name in names3 {
    print(name)
}

for (index, name) in names3.enumerated() {
    print("Name in \(index) index is \(name)")
}

constantArray.forEach {print($0)} /* iterating using lambda expression */

/* concatenating arrays */

var array1 = [1, 2, 3, 4, 5]

var array2 = [6, 7, 8, 9, 10]

var array3 = array1 + array2

/* appending items to arrays */

var array4 = [10, 20, 30, 40, 50]

array4.append(60)

array4 += [70, 80, 90, 100, 110, 120]

array4.insert(80, at: 7)

/* removing items from array */

array4.remove(at: 7) /* remove method returns the removed item */

array4.removeLast()

array4.removeFirst()

array4.removeFirst(3)

array4.removeLast(3)

/* check array size and emptiness */

print(array4.count)

if names1.isEmpty {
    print("names1 array is empty")
}

/* higher order functions in array */

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let oddNumbers = numbers.filter { $0 % 2 != 0 }

print(oddNumbers)

let evenNumbers = numbers.filter { $0 % 2 == 0}

print(evenNumbers)

let sumOfNumbers = numbers.reduce(0, { (num1, num2) in num1 + num2 })

print("Sum is \(sumOfNumbers)")

/* also there are many other higher order functions like drop, contains, flatMap, map, partition, etc availble in Arrays */


