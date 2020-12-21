/* use var keyword for defining variables */

var name = "James"

/* use let keyword for defining constants */

let message = "Hello, "

/* In the above statements, type annotation is not added explicitly */

/* when the variables/constants are intialised during declaration, swift compiler can infer the types from assigned values */

/* Type annotations can also be added to the declarations */

var newName : String = "James"

let newMessage : String = "Hello, "

var newName1 : String

let newMessage1 : String

/* Integers */

/* there are different Integer types available in swift */

/* Int, Int8 Int16, Int32, Int64, UInt, UInt8, UInt16, UInt32, UInt64 */

let number1 = UInt.min

let number2 : Int8 = 10

/* number3 is inferred as Int. Int is equivalent to Int32 in a 32bit machine and Int64 in a 64bit machine */

let number3 = 100

/* Floating point numbers */

let number4 = 10.00 /* by default floating point numbers are inferred as Double */

let number5 : Float = 12.00

let number6 : Double = 1234.00

/* Boolean */

var flag = true

flag = false
