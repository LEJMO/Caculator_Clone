//
//  CalculatorButton.swift
//  Calculator
//
//  Created by leejunmo on 2022/05/27.
// reference
// ButtonStyle reference : https://swiftwithmajid.com/2020/02/19/mastering-buttons-in-swiftui/
//

import SwiftUI

struct CalculatorButtonStyle: ButtonStyle {
    
    // 버튼 데이터
    let fontColor: String
    let bgColor: String
    let bgColorOnTap: String
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 36, weight: .medium))
            .foregroundColor(Color(fontColor))
            .padding(.vertical, 10)
            .background(
                Circle()
                    .frame(width: 78, height: 78)
                    .foregroundColor(configuration.isPressed ? Color(bgColorOnTap) : Color(bgColor))
        )
    }
}

struct CalculatorButtonStyleForZero: ButtonStyle {
    
    // 버튼 데이터
    let fontColor: String
    let bgColor: String
    let bgColorOnTap: String
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 36, weight: .medium))
            .foregroundColor(Color(fontColor))
            .padding(.vertical, 10)
            .background(
                HStack{
                    Spacer()
                    Capsule()
                        .frame(width: 170, height: 78)
                        .foregroundColor(configuration.isPressed ? Color(bgColorOnTap) : Color(bgColor))
                }
        )
    }
}

struct CalculatorButtonStyleForOperator: ButtonStyle {
    
    @EnvironmentObject var calculator: Calculator
    
    // 버튼 데이터
    let symbol: String
    let fontColor: String
    let bgColor: String
    let bgColorOnTap: String
    let bgColorIsActive: String?
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 48, weight: .medium))
            .foregroundColor(Color(calculator.op == symbol ? bgColor : fontColor))
            .padding(.vertical, 10)
            .background(
                Circle()
                    .frame(width: 78, height: 78)
                    .foregroundColor(configuration.isPressed ? Color(bgColorOnTap) : Color(calculator.op == symbol ? bgColorIsActive! : bgColor))
        )
    }
}

struct CalculatorButton: View {

    @EnvironmentObject var calculator : Calculator

    // 버튼 데이터
    let symbol: String
    let fontColor: String
    let bgColor: String
    let bgColorOnTap: String
    let bgColorIsActive: String?
    let symbolActive: String?

    var body: some View {
        // 버튼마다 스타일 및 기능 지정
        switch symbol {
        case "0":
            Button (action: {
                calculator.addNumber(number: symbol)
            }, label: {
                Text("0").padding(.trailing, 85)
            }).buttonStyle(CalculatorButtonStyleForZero(fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap))
        case "÷", "×", "−", "+":
            Button(symbol) {
                withAnimation() {
                    calculator.changeOperator(nextOp: symbol)
                }
            }.buttonStyle(CalculatorButtonStyleForOperator(symbol: symbol, fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap, bgColorIsActive: bgColorIsActive))
        case "AC":
            Button(calculator.isClear() ? symbol:symbolActive!) {
                calculator.reset()
            }.buttonStyle(CalculatorButtonStyle(fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap))
        case "⁺∕₋":
            Button(symbol) {
                calculator.changePlusMinus()
            }.buttonStyle(CalculatorButtonStyle(fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap))
        case "%":
            Button(symbol) {
                calculator.divideBy100()
            }.buttonStyle(CalculatorButtonStyle(fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap))
        case ".":
            Button(symbol) {
                calculator.addDot()
            }
            .buttonStyle(CalculatorButtonStyle(fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap))
            .padding(.leading, 6)
        case "=":
            Button(symbol) {
                calculator.calculate()
            }
            .buttonStyle(CalculatorButtonStyle(fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap))
            .padding(.leading, 1)
        default:
            Button(symbol) {
                calculator.addNumber(number: symbol)
            }.buttonStyle(CalculatorButtonStyle(fontColor: fontColor, bgColor: bgColor, bgColorOnTap: bgColorOnTap))
        }
    }
}
