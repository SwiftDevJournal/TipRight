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
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
