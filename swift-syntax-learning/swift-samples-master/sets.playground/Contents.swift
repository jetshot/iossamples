/* Set - unoredered collection of unique items */

var names1 = Set<String>()

var names2 : Set<String> = ["James", "John", "Joe", "Sam"]

let names3 : Set = ["James", "John"]

/* length of set */

print(names2.count)

if names2.isEmpty {
    print("names2 is empty") /* will not be printed */
}

/* set iteration */

for name in names2 {
    print(name)
}

names2.forEach { print($0) }

/* sorting and iterating */

for name in names2.sorted() {
    print(name)
}

/* set insert and remove */

var numberSet : Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numberSet.insert(11)

numberSet.insert(12)

numberSet.removeFirst()

numberSet.remove(12)

numberSet.removeAll()

/* set operations */

var evenSet : Set = [2, 4, 6, 8, 10, 12]

var oddSet : Set = [1, 3, 5, 7, 9, 11]

var times3 : Set = [3, 6, 9, 12, 15]

let unionSet = evenSet.union(oddSet)

unionSet.forEach { print ($0)}

let evenIntersectionSet = evenSet.intersection(times3)

evenIntersectionSet.forEach{ print($0) } /* prints 6, 12 */

let oddIntersectionSet = oddSet.intersection(times3)

oddIntersectionSet.forEach { print ($0) } /* prints 3, 9 */

let numbers : Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

if numbers.isSuperset(of: evenSet) {
    print("numbers is a super set of evenSet") /* will be printed */
}

if evenSet.isSubset(of: numbers) {
    print("evenSet is a sub set of numbers") /* will be printed */
}

/* higher order functions in set */

let filteredSet = numbers.filter{ $0 % 2 == 0 }

print(filteredSet)

let sumOfFilteredSet = filteredSet.reduce(0, { (num1, num2) in num1 + num2 })

print(sumOfFilteredSet)

let times5 = numbers.map { $0 * 5}

print(times5)

/* also there are many other higher order functions like drop(while), contains(where), flatMap, etc available in Sets */
