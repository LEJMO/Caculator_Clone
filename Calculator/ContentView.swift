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
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ZStack {
            Color("black").ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Text("1200.12")
                        .foregroundColor(Color("white"))
                        .font(.system(size: 95, weight: .light))
                        .padding(.trailing, 25)
                }
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 6,
                    pinnedViews: [],
                    content: {
                        Section {
                            ForEach(1..<17, id: \.self) { index in
                                CalculatorButton(content: contents[index])
                            }
                        }
                        Section {
                            CalculatorButton(content: contents[17])
                            ForEach(17..<20, id: \.self) { index in
                                CalculatorButton(content: contents[index])
                            }
                        }
                    })
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
