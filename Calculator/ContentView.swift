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
    
    // 버튼 정보 배열
    // [내용, 폰트색, 배경, 탭배경, 활성화배경(옵셔널)]
    private let contents: [[String]] = [
        ["C", "black", "lgray", "lgray2"],
        ["AC", "black", "lgray", "lgray2"],
        ["⁺∕₋", "black", "lgray", "lgray2"],
        ["%", "black", "lgray", "lgray2"],
        ["÷", "white", "orange", "orange2", "white"],
        ["7", "white", "dgray", "dgray2"],
        ["8", "white", "dgray", "dgray2"],
        ["9", "white", "dgray", "dgray2"],
        ["×", "white", "orange", "orange2", "white"],
        ["4", "white", "dgray", "dgray2"],
        ["5", "white", "dgray", "dgray2"],
        ["6", "white", "dgray", "dgray2"],
        ["−", "white", "orange", "orange2", "white"],
        ["1", "white", "dgray", "dgray2"],
        ["2", "white", "dgray", "dgray2"],
        ["3", "white", "dgray", "dgray2"],
        ["+", "white", "orange", "orange2", "white"],
        ["0", "white", "dgray", "dgray2"],
        [".", "white", "dgray", "dgray2"],
        ["=", "white", "orange", "orange2"]
    ]
    
    private let columnsForText: [GridItem] = [
        GridItem(.flexible())
    ]
    
    private let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
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
                LazyVGrid(
                    columns: columnsForText,
                    alignment: .trailing,
                    content: {
                        Text("1200.12")
                            .foregroundColor(Color("white"))
                            .font(.system(size: 95, weight: .thin))
                    }).padding(.trailing, 40)
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 17,
                    content: {
                        ForEach(1..<17, id: \.self) { index in
                            CalculatorButton(content: contents[index])
                        }
                    }).padding(.horizontal, 16)
                Spacer().frame(height: 25)
                LazyVGrid(
                    columns: columnsForZero,
                    alignment: .center,
                    spacing: 17,
                    content: {
                        CalculatorButton(content: contents[17])
                        CalculatorButton(content: contents[18]).padding(.leading, 6)
                        CalculatorButton(content: contents[19]).padding(.leading, 1)
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
