//
//  ContentView.swift
//  Day1-1
//
//  Created by Rohit Kumar on 21/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var bounceValue = 0
    
    var body: some View {
        VStack {
            Image(systemName: "wifi")
                .resizable()
//

                .symbolEffect(.variableColor, isActive: true)
//                .symbolEffect(.scale.up)
                .symbolEffect(.bounce, options: .repeat(2), value: bounceValue)
                .frame(width: 150, height: 150)
        }.padding()
        
        Button("Animnate") {
            bounceValue += 1
        }
        .frame(width: 150, height: 50)
            
       
    }
}

#Preview {
    ContentView()
}
