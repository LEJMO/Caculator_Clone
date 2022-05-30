//
//  CalculatorModel.swift
//  Calculator
//
//  Created by leejunmo on 2022/05/27.
//

import SwiftUI


class Calculator: ObservableObject {
    
    @Published var resultText: String = "0"
    @Published var op: String? = nil
    @Published var tempNumber: String = ""
    @Published var calcString: String = "0"
    
    private let numberFormatter = NumberFormatter()
    
    // 초기화 함수
    func reset() {
        resultText = "0"
        tempNumber = ""
        calcString = "0"
    }
    
    // .
    func addDot() {
        guard (!tempNumber.contains(".")) else {return}
        
        tempNumber += "."
        
        updateResult(number: tempNumber)
    }
    
    // %
    func divideBy100() {
        guard (tempNumber.count != 0) else { return }
        
        tempNumber = String(Double(tempNumber)!/100)
        
        updateResult(number: tempNumber)
    }
    
    // 부호 바꾸기
    func changePlusMinus() {
        guard (tempNumber.count != 0) else { return }
        
        if (tempNumber.first == "-") {
            tempNumber.removeFirst()
        } else {
            tempNumber = "-" + tempNumber
        }
        
        updateResult(number: tempNumber)
    }
    
    // 연산
    func calculate() {
        calcString += tempNumber
        
        let expression = NSExpression(format:calcString)
        let value = expression.expressionValue(with: nil, context: nil) as? Double
        
        updateResult(number: String(value!))
    }
    
    // AC check
    func isClear() -> Bool {
        return tempNumber.isEmpty && calcString.isEmpty
    }
    
    // 숫자 추가 함수
    func addNumber(number: String) {
        // 숫자 9개 이상 입력 방지
        guard (tempNumber.count != 9) else { return }
        
        if op != nil {
            tempNumber = number
            withAnimation() {
                op = nil
            }
        } else {
            if (tempNumber == "0") {
                if number != "0" {
                    tempNumber += number
                }
            } else {
                tempNumber += number
            }
        }
        
        updateResult(number: tempNumber)
    }
    
    // 연산자 변경 함수
    func changeOperator(nextOp: String) {
        
        // "÷", "×", "−", "+"
        let realOperatorInfo: [String: String] = ["+": "+", "−": "-", "×": "*", "÷": "/"]
        
        op = nextOp
        
        guard (!tempNumber.isEmpty) else { return }
        
        if (lastIsOperator(data: calcString) && tempNumber.count == 0) {
            calcString.removeLast()
            calcString += realOperatorInfo[nextOp]!
        } else {
            calcString += tempNumber; calcString += realOperatorInfo[nextOp]!
        }
        
    }
    
    // 출력값 업데이트 함수
    func updateResult(number: String) {
        numberFormatter.numberStyle = .decimal
        
        guard number != "." else {
            resultText = "0."
            return
        }
        
        if (number.last == ".") {
            resultText = numberFormatter.string(from: NSNumber(value:Double(number[..<number.endIndex])!))! + "."
        } else {
            resultText = numberFormatter.string(from: NSNumber(value:Double(number)!))!
        }
    }
    
    // 마지막 문자 "÷", "×", "−", "+" 확인
    func lastIsOperator(data: String) -> Bool {
        guard data.count != 0 else { return false }
        
        switch data.last! {
        case "÷":
            return true
        case "×":
            return true
        case "−":
            return true
        case "+":
            return true
        default:
            return false
        }
    }
}
