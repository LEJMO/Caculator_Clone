//
//  CalculatorApp.swift
//  Calculator
//
//  Created by leejunmo on 2022/05/27.
//

import SwiftUI

@main
struct CalculatorApp: App {
    
    @StateObject private var calculator = Calculator()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(.dark)
                .environmentObject(calculator)
        }
    }
}
