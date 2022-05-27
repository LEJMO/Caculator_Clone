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
    
    // [내용, 폰트색, 배경, 탭배경, 활성화배경(옵셔널)]
    let content: [String]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 36, weight: .medium))
            .foregroundColor(Color(content[1]))
            .padding(.vertical, 30)
            .background(
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(configuration.isPressed ? Color(content[3]) : Color(content[2]))
        )
    }
}

struct CalculatorButtonStyleForZero: ButtonStyle {
    
    // [내용, 폰트색, 배경, 탭배경, 활성화배경(옵셔널)]
    let content: [String]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 36, weight: .medium))
            .foregroundColor(Color(content[1]))
            .padding(.vertical, 30)
            .background(
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(configuration.isPressed ? Color(content[3]) : Color(content[2]))
        )
    }
}

struct CalculatorButtonStyleForOperator: ButtonStyle {
    
    // [내용, 폰트색, 배경, 탭배경, 활성화배경(옵셔널)]
    let content: [String]
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.system(size: 36, weight: .medium))
            .foregroundColor(Color(content[1]))
            .padding(.vertical, 30)
            .background(
                Circle()
                    .frame(width: 80, height: 80)
                    .foregroundColor(configuration.isPressed ? Color(content[3]) : Color(content[2]))
        )
    }
}

struct CalculatorButton: View {
    
    // [내용, 폰트색, 배경, 탭배경, 활성화배경(옵셔널)]
    let content: [String]
    
    @State private var isTap: Bool = false
    
    var body: some View {
        // 0과 사칙연산자는 따로 스타일 지정(0은 모양, 사직연산자는 활성화배경때문)
        switch content[0] {
        case "0":
            Button(content[0]) {}.buttonStyle(CalculatorButtonStyleForZero(content: content))
        case "÷", "×", "−", "+":
            Button(content[0]) {}.buttonStyle(CalculatorButtonStyleForOperator(content: content))
        default:
            Button(content[0]) {}.buttonStyle(CalculatorButtonStyle(content: content))
        }
    }
}
