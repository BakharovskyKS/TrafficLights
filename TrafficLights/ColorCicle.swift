//
//  ColorCicle.swift
//  TrafficLights
//
//  Created by Кирилл Бахаровский on 11/14/21.
//

import SwiftUI

struct ColorCicle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(
                Circle().stroke(Color.white, lineWidth: 5)
                    .opacity(opacity)
            )
    }
    
    
}

struct ColorCicle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCicle(color: .black, opacity: 1)
            
    }
}

