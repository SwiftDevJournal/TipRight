//
//  ContentView.swift
//  Shared
//
//  Created by mark on 6/27/22.
//

import SwiftUI

struct ContentView: View {
    @State private var billAmount: Double = 0
    @State private var tipPercentage: Int = 20
    @State private var tipAmount: Double = 0
    
    let currencyFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter
    }()
    let tipRange = 0...1000
    
    var body: some View {
        VStack {
            HStack {
                Text("Bill Amount:")
                TextField("Bill Amount", value: $billAmount, formatter: currencyFormatter)
            }
            HStack {
                Text("Tip Percentage:")
                TextField("Tip Percentage", value: $tipPercentage, formatter: NumberFormatter())
                // Increment or decrement by 5 percent.
                Stepper("Tip Percentage", value: $tipPercentage, in: tipRange, step: 5)
            }
            Text("Tip Amount: \(tipAmount)")
            Button("Calculate Tip") {
                calculateTip()
            }
        }
    }
    
    func calculateTip() {
        let percentage = Double(tipPercentage) / 100.0
        tipAmount = billAmount * percentage
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
