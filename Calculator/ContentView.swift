//
//  ContentView.swift
//  Calculator
//
//  Created by leejunmo on 2022/05/27.
//
// reference
// LazyVGrid reference : https://seons-dev.tistory.com/58
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var calculator : Calculator
    
    // 버튼 정보 배열
    private let contents: [CalcButton] = [
        CalcButtons.Clear(), CalcButtons.PlusMinus(), CalcButtons.Percent(), CalcButtons.divide(),
        CalcButtons.Seven(), CalcButtons.Eight(), CalcButtons.Nine(), CalcButtons.Multiply(),
        CalcButtons.Four(), CalcButtons.Five(), CalcButtons.Six(), CalcButtons.Minus(),
        CalcButtons.One(), CalcButtons.Two(), CalcButtons.Three(), CalcButtons.Plus(),
        CalcButtons.Zero(), CalcButtons.Dot(), CalcButtons.Equal()
    ]
    
    // 텍스트를 위한 GridItem
    private let columnsForText: [GridItem] = [
        GridItem(.flexible())
    ]
    
    // 버튼 배열을 위한 GridItem
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    // 0라인 버튼배열을 위한 GridItem
    private let columnsForZero: [GridItem] = [
        GridItem(.flexible(minimum: 170)),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            Color("black").ignoresSafeArea()
            VStack {
                Spacer().frame(height: 180)
                // 출력 텍스트
                LazyVGrid(
                    columns: columnsForText,
                    alignment: .trailing,
                    content: {
                        Text("\(calculator.resultText)")
                            .foregroundColor(Color("white"))
                            .font(.system(size: 95, weight: .light))
                            .lineLimit(1)
                            .frame(height: 100)
                            .minimumScaleFactor(0.5)
                    })
                .padding(.horizontal, 40)
                .gesture(
                    DragGesture()
                        .onChanged { _ in
                            calculator.deleteLastNumber()
                            calculator.isNumberMode = false
                        }
                        .onEnded { _ in
                            calculator.isNumberMode = true
                        }
                )
                // 4X4 버튼 배열
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 17,
                    content: {
                        ForEach(0..<16, id: \.self) { index in
                            CalculatorButton(
                                symbol: contents[index].symbol,
                                fontColor: contents[index].fontColor,
                                bgColor: contents[index].bgColor,
                                bgColorOnTap: contents[index].bgColorOnTap,
                                bgColorIsActive: contents[index].bgColorIsActive,
                                symbolActive: contents[index].symbolActive)
                        }
                    }).padding(.horizontal, 16)
                Spacer().frame(height: 25)
                // 0 라인 버튼 배열
                LazyVGrid(
                    columns: columnsForZero,
                    alignment: .center,
                    spacing: 17,
                    content: {
                        ForEach(16..<19, id: \.self) { index in
                            CalculatorButton(
                                symbol: contents[index].symbol,
                                fontColor: contents[index].fontColor,
                                bgColor: contents[index].bgColor,
                                bgColorOnTap: contents[index].bgColorOnTap,
                                bgColorIsActive: contents[index].bgColorIsActive,
                                symbolActive: contents[index].symbolActive)
                        }
                    }).padding(.horizontal, 16)
                Spacer().frame(height: 74)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
