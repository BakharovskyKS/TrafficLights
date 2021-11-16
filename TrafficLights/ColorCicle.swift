//
//  ColorCicle.swift
//  TrafficLights
//
//  Created by Кирилл Бахаровский on 11/14/21.
//

import SwiftUI

struct ColorCicle: View {
    var color: Color
    var opacity: CGFloat
    
    init(color: Color, opacity: CGFloat) {
        self.color = color
        self.opacity = opacity
    }
    
    var body: some View {
        
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 20)
            .padding(5)
    }
    
    
}

struct ColorCicle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCicle(color: .black, opacity: 0.5)
    }
}

