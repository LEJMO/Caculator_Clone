//
//  Content.swift
//  Calculator
//
//  Created by leejunmo on 2022/05/31.
//

import SwiftUI

protocol CalcButton {
    static var symbol: String { get set }
    static var fontColor: String { get set }
    static var bgColor: String { get set }
    static var bgColorOnTap: String { get set }
    static var bgColorIsActive: String? {get set }
    static var symbolActive: String? { get set }
}

struct CalcButtons {
    struct Clear: CalcButton {
        static var symbol: String = "AC"
        static var fontColor: String = "black"
        static var bgColor: String = "lgray"
        static var bgColorOnTap: String = "lgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = "C"
    }
    
    struct PlusMinus: CalcButton {
        static var symbol: String = "⁺∕₋"
        static var fontColor: String = "black"
        static var bgColor: String = "lgray"
        static var bgColorOnTap: String = "lgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Percent: CalcButton {
        static var symbol: String = "%"
        static var fontColor: String = "black"
        static var bgColor: String = "lgray"
        static var bgColorOnTap: String = "lgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Plus: CalcButton {
        static var symbol: String = "+"
        static var fontColor: String = "white"
        static var bgColor: String = "orange"
        static var bgColorOnTap: String = "orange2"
        static var bgColorIsActive: String? = "white"
        static var symbolActive: String? = nil
    }
    
    struct Minus: CalcButton {
        static var symbol: String = "−"
        static var fontColor: String = "white"
        static var bgColor: String = "orange"
        static var bgColorOnTap: String = "orange2"
        static var bgColorIsActive: String? = "white"
        static var symbolActive: String? = nil
    }
    
    struct divide: CalcButton {
        static var symbol: String = "÷"
        static var fontColor: String = "white"
        static var bgColor: String = "orange"
        static var bgColorOnTap: String = "orange2"
        static var bgColorIsActive: String? = "white"
        static var symbolActive: String? = nil
    }
    
    struct Multiply: CalcButton {
        static var symbol: String = "×"
        static var fontColor: String = "white"
        static var bgColor: String = "orange"
        static var bgColorOnTap: String = "orange2"
        static var bgColorIsActive: String? = "white"
        static var symbolActive: String? = nil
    }
    
    struct One: CalcButton {
        static var symbol: String = "1"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Two: CalcButton {
        static var symbol: String = "2"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Three: CalcButton {
        static var symbol: String = "3"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Four: CalcButton {
        static var symbol: String = "4"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Five: CalcButton {
        static var symbol: String = "5"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Six: CalcButton {
        static var symbol: String = "6"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Seven: CalcButton {
        static var symbol: String = "7"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Eight: CalcButton {
        static var symbol: String = "8"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Nine: CalcButton {
        static var symbol: String = "9"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Zero: CalcButton {
        static var symbol: String = "0"
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Dot: CalcButton {
        static var symbol: String = "."
        static var fontColor: String = "white"
        static var bgColor: String = "dgray"
        static var bgColorOnTap: String = "dgray2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
    
    struct Equal: CalcButton {
        static var symbol: String = "="
        static var fontColor: String = "white"
        static var bgColor: String = "orange"
        static var bgColorOnTap: String = "orange2"
        static var bgColorIsActive: String? = nil
        static var symbolActive: String? = nil
    }
}
