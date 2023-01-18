//
//  ContentView.swift
//  CryptoHandle
//
//  Created by Noé VERNIER on 17/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .theme.background
                .ignoresSafeArea()
            VStack (spacing: 40) {
                Text("Accent Color")
                    .foregroundColor(Color.theme.accent)
                    .bold()
                
                Text("Secondary Text Color")
                    .foregroundColor(Color.theme.secondaryText)
                
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                
                Text("Green Color")
                    .foregroundColor(Color.theme.green)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
