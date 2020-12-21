/* structs are value types in Swift */

struct Rectangle {
    var length : Int = 0
    var breadth : Int = 0
    lazy var description = "length: \(length), breadth: \(breadth)"
    var area : Int {
        get {
            return length * breadth
        }
    }
    var areaNew : Int {
        return length * breadth
    }
}

var square = Rectangle(length: 10, breadth: 10, description: nil)

var rect = Rectangle()

rect.breadth = 10

rect.length = 20

print(square.area)

print(square.description)

print(rect.area)

print(rect.areaNew)

struct Point {
    var x : Int = 0
    var y : Int = 0
}

struct Size {
    var width = 0
    var height = 0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center : Point {
        get {
            return Point(x: origin.x + (size.width / 2) , y: origin.y + (size.height / 2))
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

struct Counter {
    static var staticCounter : Int = 0
    static var staticComputedVariable : String {
        get {
            return "static counter value: \(staticCounter)"
        }
    }
    var count : Int = 0 {
        willSet(newValue) {
            print("new value: \(newValue)")
        }
        didSet {
            print("old value: \(oldValue)")
        }
    }
    mutating func increment() {
        count += 1
    }
    mutating func increment(by amount: Int) {
        count += amount
    }
    func printCounterValue() {
        print("Counter Value: \(self.count)")
    }
}

var counter = Counter()

counter.count = 10 /* prints new value: 10 and old value: 0 */

counter.increment()

print(counter.count) /* prints 11 */

counter.increment(by: 10)

print(counter.count) /* prints 21 */

print(Counter.staticCounter)

print(Counter.staticComputedVariable)

counter.printCounterValue()
