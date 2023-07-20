import UIKit

//MARK: - Level 2




//class Calculator {
//
//    private func add(firstNumber: Double, secondNumber: Double) -> Double {
//        return firstNumber + secondNumber
//    }
//
//    private func subtract(firstNumber: Double, secondNumber: Double) -> Double {
//        return firstNumber - secondNumber
//    }
//
//    private func divide(firstNumber: Double, secondNumber: Double) -> Double? {
//        if secondNumber == 0 {
//            return nil
//        } else {
//            return firstNumber / secondNumber
//        }
//    }
//
//    private func multiply(firstNumber: Double, secondNumber: Double) -> Double {
//        return firstNumber * secondNumber
//    }
//
//    private func remainder(firstNumber: Double, secondNumber: Double) -> Double {
//
//        return firstNumber.truncatingRemainder(dividingBy: secondNumber)
//    }
//
//    func calculate(firstNumber: Double, secondNumber: Double, oper: String) -> Double? {
//
//        switch oper {
//        case "+":
//            let result = add(firstNumber: firstNumber, secondNumber: secondNumber)
//            return result
//        case "-":
//            return subtract(firstNumber: firstNumber, secondNumber: secondNumber)
//
//        case "*":
//            return multiply(firstNumber: firstNumber, secondNumber: secondNumber)
//
//        case "/":
//            return divide(firstNumber: firstNumber, secondNumber: secondNumber)
//
//        case "%":
//            return remainder(firstNumber: firstNumber, secondNumber: secondNumber)
//        default:
//            return nil
//        }
//    }
//}
//
//let calculator = Calculator()
//
//let a = calculator.calculate(firstNumber: 5, secondNumber: 6, oper: "%")
//print(a)




//MARK: - level 3

//class Addoperation {
//    func operate(firstNumber: Double, secondNumber: Double) -> Double {
//        return firstNumber + secondNumber
//    }
//}
//
//class SubtractOperation {
//    func operate(firstNumber: Double, secondNumber: Double) -> Double {
//        return firstNumber - secondNumber
//    }
//}
//
//class MultiplyOperation {
//    func operate(firstNumber: Double, secondNumber: Double) -> Double {
//        return firstNumber * secondNumber
//    }
//}
//
//class DivideOperation {
//    func operate(firstNumber: Double, secondNumber: Double) -> Double? {
//        if secondNumber == 0 {
//            return nil
//        } else {
//            return firstNumber / secondNumber
//        }
//    }
//}
//
//class Calculator {
//
//    func calculate(firstNumber: Double, secondNumber: Double, oper: String) -> Double? {
//        switch oper {
//        case "+":
//            return Addoperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
//        case "-":
//            return SubtractOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
//        case "*":
//            return MultiplyOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
//        case "/":
//            return DivideOperation().operate(firstNumber: firstNumber, secondNumber: secondNumber)
//        default:
//            return nil
//        }
//    }
//}
//
//let calculator = Calculator()
//let a = calculator.calculate(firstNumber: 2, secondNumber: 0, oper: "/")
//print(a)





//MARK: - level 4

class AbstractOperation {
    func operate(firstNumber: Double, secondNumber: Double) -> Double? {
        return nil
    }
}

class AddOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double? {
        return firstNumber + secondNumber
    }
}

class SubtractOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double? {
        return firstNumber - secondNumber
    }
}

class MultiplyOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double? {
        return firstNumber * secondNumber
    }
}

class DivideOperation: AbstractOperation {
    override func operate(firstNumber: Double, secondNumber: Double) -> Double? {
        if secondNumber == 0 {
            return nil
        } else {
            return firstNumber / secondNumber
        }
    }
}

class Calculator {
    
    var abstractOperation: AbstractOperation?
    
    func calculate(firstNumber: Double, secondNumber: Double) -> Double? {
        
        abstractOperation?.operate(firstNumber: firstNumber, secondNumber: secondNumber)
    }
    
    
    
}

let calculator = Calculator()
calculator.abstractOperation = AddOperation()
let a = calculator.calculate(firstNumber: 2, secondNumber: 3)
print(a)

calculator.abstractOperation = SubtractOperation()
let b = calculator.calculate(firstNumber: 3, secondNumber: 3)
print(b)
