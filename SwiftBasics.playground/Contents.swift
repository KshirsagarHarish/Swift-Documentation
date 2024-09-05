import UIKit

//MARK: - Type Annotation
/*You can provide a type annotation when you declare a constant or variable, to be clear about the kind of values the constant or variable can store */

var number: Int

//MARK: - Type Safety
/*Swift is a type-safe language. A type safe language encourages you to be clear about the types of values your code can work with. If part of your code requires a String, you can’t pass it an Int by mistake.
Because Swift is type safe, it performs type checks when compiling your code and flags any mismatched types as errors. This enables you to catch and fix errors as early as possible in the development process. */

//MARK: - Type Inference
/*For example, if you assign a literal value of 42 to a new constant without saying what type it is, Swift infers that you want the constant to be an Int, because you have initialized it with a number that looks like an integer */
let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

//MARK: - Type Aliases
/*Type aliases define an alternative name for an existing type. You define type aliases with the typealias keyword.
 Type aliases are useful when you want to refer to an existing type by a name that’s contextually more appropriate, such as when working with data of a specific size from an external source:
 */
typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

//MARK: - Tuples
/*Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.*/
let (name, age, Weight) = ("Lorry", 21, 59)

//MARK: - Optionals
/*You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value of a specified type, and you can unwrap the optional to access that value, or there isn’t a value at all.*/

//MARK: - Optional Binding
/*You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with if, guard, and while statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action*/

//Providing a Fallback Value
let friendName: String? = nil
let greeting = "Hello, " + (friendName ?? "friend") + "!"
print(greeting)

//Force Unwrapping
//May cause runtime error if value is absent
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
let number1 = convertedNumber!

//Implicitly Unwrapped Optionals
/*Sometimes it’s clear from a program’s structure that an optional will always have a value, after that value is first set. In these cases, it’s useful to remove the need to check and unwrap the optional’s value every time it’s accessed, because it can be safely assumed to have a value all of the time.*/
let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // Unwrapped automatically
