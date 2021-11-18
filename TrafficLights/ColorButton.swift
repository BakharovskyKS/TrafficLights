//
//  ColorButton.swift
//  TrafficLights
//
//  Created by Кирилл Бахаровский on 11/18/21.
//

import SwiftUI

struct ColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color(.blue))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white, lineWidth: 5)
        )
    }
}

struct ColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ColorButton(title: "Start", action: {})
    }
}
