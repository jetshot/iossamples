/* classes are reference types in swift */

class Counter {
    /* property with observers */
    var value : Int = 0 {
        willSet {
            print("new value: \(newValue)")
        }
        didSet {
            print("old value: \(oldValue)")
        }
    }
    var description : String {
        return "current value is \(self.value)"
    }
    func increment() {
        value += 1
    }
    func increment(by value : Int) {
        self.value += value
    }
}

let counter = Counter()

print(counter.description)

counter.increment() /* prints 1 */

print(counter.description)

counter.increment(by: 10) /* prints 11 */

print(counter.description)

class NewCounter : Counter {
    /* overriding computed properties */
    override var description: String {
        return "current value from newCounter is \(self.value)"
    }
    /* overriding property observers */
    override var value : Int {
        willSet {
            print("new value from newCounter: \(newValue)")
        }
        didSet {
            print("old value from newCounter: \(oldValue)")
        }
    }
}

let newCounter = NewCounter()

newCounter.increment()

print(newCounter.description)

/* Inheritance in classes */

class Animal {
    var name : String = ""
    func makeNoise() {
        print("blah blah")
    }
    func description() {
        print("Animal - \(name)")
    }
}

class Dog : Animal {
    override func makeNoise() {
        print("bow bow!!")
    }
    override func description() {
        print("Dog - \(name)")
    }
}

class Cat : Animal {
    override func makeNoise() {
        print("meow meow!!")
    }
    override func description() {
        print("Cat - \(name)")
    }
}

let dog = Dog()

dog.name = "Jimmy"

dog.description() /* prints Dog - Jimmy */

dog.makeNoise() /* prints bow bow!! */

let cat1 = Cat()

let cat2 = cat1

/* identity operator */

if cat1 === cat2 {
    print("the cats are same")
}

/* type proprties */

class Example {
    static var typeVariable = 100
    class var overrideableTypeVariable : Int {
        return 200
    }
}

/* inheriting NewExample is now restricted with final keyword */

final class NewExample : Example {
    
    /* overriding overrideableTypeVariable is now restricted with final keyword */
    
    final override class var overrideableTypeVariable : Int {
        return 300
    }
}

print(Example.typeVariable)

print(NewExample.overrideableTypeVariable)
