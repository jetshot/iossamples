/* closures in swift */

let names = ["John", "Jack", "Sam", "Arya", "Peter", "Dany", "Mohit"]

let comparator = {
        (name1: String, name2: String) -> Bool in return name1 < name2
    }

var orderedNames = names.sorted(by: comparator)

orderedNames = names.sorted(by: {
    (name1: String, name2: String) -> Bool in return name1 < name2
})

orderedNames = names.sorted(by: { (name1, name2) in return name1 < name2} )

orderedNames = names.sorted(by: { (name1, name2) in name1 < name2 } )

orderedNames = names.sorted(by: { $0 < $1} )

orderedNames = names.sorted(by: <)

/* trailing closure */

orderedNames = names.sorted { $0 < $1 }

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

let oddNumbers = numbers.filter { $0 % 2 != 0 }

print(oddNumbers)

let times5 = numbers.map { $0 * 5 }

print(times5)

/* capturing values */

func increament(by number : Int) -> () -> Int {
    var total = 0
    func incrementor () -> Int {
        total += number
        return total
    }
    return incrementor
}

let increamentBy5 = increament(by: 5)

print(increamentBy5()) /* prints 5 */

print(increamentBy5()) /* prints 10 */

let increamentBy10 = increament(by: 10)

print(increamentBy10()) /* prints 10 */

print(increamentBy10()) /* prints 20 */

/* escaping closures */

var eventHandlers : [() -> String] = []

func processEvents(handler : @escaping () -> String) {
    eventHandlers.append(handler)
}

processEvents {
    "Hello"
}

processEvents {
    "World"
}

for eventHandler in eventHandlers {
    print(eventHandler())
}

/* auto closures */

func acceptsAutoClosure(input stringGenerator : @autoclosure () -> String) {
    print(stringGenerator())
}

acceptsAutoClosure(input: "Hello World")

/* escaping auto closures */

var newEventHandlers : [() -> String] = []

func processEvent(handler: @escaping @autoclosure () -> String) {
    newEventHandlers.append(handler)
}

processEvent(handler: "Hello")

processEvent(handler: "World!!")

for event in newEventHandlers {
    print(event())
}
