/* enumerations in swift */

enum Direction {
    case NORTH
    case SOUTH
    case EAST
    case WEST
}

let moveTowards = Direction.NORTH

switch moveTowards {
case .NORTH:
    print("Moving towards North")
case .SOUTH:
    print("Moving towards South")
case .EAST:
    print("Moving towards East")
case .WEST:
    print("Moving towards West")
}

/* associated values in enums */

enum TrainStatus {
    case OnTime
    case Delayed(by: Int)
    case Arriving(in: Int)
}

let status = TrainStatus.Delayed(by: 15)

switch status {
case .OnTime:
    print("On time")
case .Delayed(let minutes):
    print("Train is delay by \(minutes) minutes")
case .Arriving(let minutes):
    print("Train is arriving in \(minutes) minutes")
}

/* raw values */

enum Title : String {
    case MR = "Mr."
    case MRS = "Mrs."
    case M = "Master."
    case MS = "Ms."
    case SIR = "Sir."
    case DR = "Dr."
}

let title : Title = .MR

print(title.rawValue) /* prints Mr. */

let newTitle = Title(rawValue: "Dr.") /* Failing Initialiser - so, returns an optional Title */

print(newTitle!.rawValue) /* prints Dr. */

/* Recursive Enumerations */

/* indirect can also used for individual cases */

indirect enum MathOperation {
    case Value(Int)
    case Addition(MathOperation, MathOperation)
}

let leftOperand = MathOperation.Value(5)

let rightOperand = MathOperation.Value(10)

let add = MathOperation.Addition(leftOperand, rightOperand)

func evaluate(_ expr: MathOperation) -> Int {
    switch expr {
    case .Value(let value):
        return value
    case .Addition(let operand1, let operand2):
        return evaluate(operand1) + evaluate(operand2)
    }
}

print(evaluate(add)) /* prints 15 */

/* enums also supports static functions, properties, mutating methods - to be explored in detail */
