//
//  ContentView.swift
//  TrafficLights
//
//  Created by Кирилл Бахаровский on 11/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var ColorCircleRed: CGFloat = 0.1
    @State var ColorCircleYellow: CGFloat = 0.1
    @State var ColorCircleGreen: CGFloat = 0.1

    @State var onColor: Int = 0
    @State var textButton = "Start"
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                ColorCicle(color: .red, opacity: ColorCircleRed)
                ColorCicle(color: .yellow, opacity: ColorCircleYellow)
                ColorCicle(color: .green, opacity: ColorCircleGreen)
                Spacer()
                Button(action: {ButtonAction()}) {
                    Text(textButton)
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.horizontal, 60)
                        .padding(.vertical, 10)
                        .background(.blue)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.white, lineWidth: 4))
                        .shadow(radius: 20)
                }
            }
        }
    }
    
    private func ButtonAction() {
        textButton = "Next"
        onColor += 1
        
        switch onColor {
        case 1:
            ColorCircleGreen = 0.1
            ColorCircleRed = 1
        case 2:
            ColorCircleRed = 0.1
            ColorCircleYellow = 1
        case 3:
            ColorCircleYellow = 0.1
            ColorCircleGreen = 1
            onColor = 0
        default:
            return
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
