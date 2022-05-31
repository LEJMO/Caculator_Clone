//
//  Content.swift
//  Calculator
//
//  Created by leejunmo on 2022/05/31.
//

import SwiftUI

// 배열 생성을 위한 프로토콜
protocol CalcButton {
    var symbol: String { get set }
    var fontColor: String { get set }
    var bgColor: String { get set }
    var bgColorOnTap: String { get set }
    var bgColorIsActive: String? {get set }
    var symbolActive: String? { get set }
}

// 버틀의 정보를 담은 구조체
struct CalcButtons {
    struct Clear: CalcButton {
        var symbol: String = "AC"
        var fontColor: String = "black"
        var bgColor: String = "lgray"
        var bgColorOnTap: String = "lgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = "C"
    }
    
    struct PlusMinus: CalcButton {
        var symbol: String = "⁺∕₋"
        var fontColor: String = "black"
        var bgColor: String = "lgray"
        var bgColorOnTap: String = "lgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Percent: CalcButton {
        var symbol: String = "%"
        var fontColor: String = "black"
        var bgColor: String = "lgray"
        var bgColorOnTap: String = "lgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Plus: CalcButton {
        var symbol: String = "+"
        var fontColor: String = "white"
        var bgColor: String = "orange"
        var bgColorOnTap: String = "orange2"
        var bgColorIsActive: String? = "white"
        var symbolActive: String? = nil
    }
    
    struct Minus: CalcButton {
        var symbol: String = "−"
        var fontColor: String = "white"
        var bgColor: String = "orange"
        var bgColorOnTap: String = "orange2"
        var bgColorIsActive: String? = "white"
        var symbolActive: String? = nil
    }
    
    struct divide: CalcButton {
        var symbol: String = "÷"
        var fontColor: String = "white"
        var bgColor: String = "orange"
        var bgColorOnTap: String = "orange2"
        var bgColorIsActive: String? = "white"
        var symbolActive: String? = nil
    }
    
    struct Multiply: CalcButton {
        var symbol: String = "×"
        var fontColor: String = "white"
        var bgColor: String = "orange"
        var bgColorOnTap: String = "orange2"
        var bgColorIsActive: String? = "white"
        var symbolActive: String? = nil
    }
    
    struct One: CalcButton {
        var symbol: String = "1"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Two: CalcButton {
        var symbol: String = "2"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Three: CalcButton {
        var symbol: String = "3"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Four: CalcButton {
        var symbol: String = "4"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Five: CalcButton {
        var symbol: String = "5"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Six: CalcButton {
        var symbol: String = "6"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Seven: CalcButton {
        var symbol: String = "7"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Eight: CalcButton {
        var symbol: String = "8"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Nine: CalcButton {
        var symbol: String = "9"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Zero: CalcButton {
        var symbol: String = "0"
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Dot: CalcButton {
        var symbol: String = "."
        var fontColor: String = "white"
        var bgColor: String = "dgray"
        var bgColorOnTap: String = "dgray2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
    
    struct Equal: CalcButton {
        var symbol: String = "="
        var fontColor: String = "white"
        var bgColor: String = "orange"
        var bgColorOnTap: String = "orange2"
        var bgColorIsActive: String? = nil
        var symbolActive: String? = nil
    }
}
