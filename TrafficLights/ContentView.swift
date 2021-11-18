//
//  ContentView.swift
//  TrafficLights
//
//  Created by Кирилл Бахаровский on 11/12/21.
//

import SwiftUI

enum CurrentLights {
case red, yellow, green
}

struct ContentView: View {
    
    @State private var titleButton = "START"
    @State private var currentLights = CurrentLights.red
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack(spacing: 20) {
                ColorCicle(color: .red, opacity: currentLights == .red ? 1 : 0.3)
                ColorCicle(color: .yellow, opacity: currentLights == .yellow ? 1 : 0.3)
                ColorCicle(color: .green, opacity: currentLights == .green ? 1 : 0.3)
                
                Spacer()
                
                ColorButton(title: titleButton, action: NextColor)
            }
        }
    }
    
    private func NextColor() {
        if titleButton == "START" {
            titleButton = "NEXT"
        }
        
        switch currentLights {
        case .red: currentLights = .yellow
        case .yellow: currentLights = .green
        case .green: currentLights = .red
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
