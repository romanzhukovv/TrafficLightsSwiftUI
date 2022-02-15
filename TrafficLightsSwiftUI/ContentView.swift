//
//  ContentView.swift
//  TrafficLightsSwiftUI
//
//  Created by Roman Zhukov on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redCircle = ColorCircle(color: .red, opacity: 0.3)
    @State private var yellowCircle = ColorCircle(color: .yellow, opacity: 0.3)
    @State private var greenCircle = ColorCircle(color: .green, opacity: 0.3)
    
    @State private var buttonLabel = "START"
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0.1215686277, green: 0.01176470611, blue: 0.4235294163, alpha: 1)), Color(#colorLiteral(red: 0.6072029696, green: 0.651513804, blue: 1, alpha: 1))], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                redCircle
                yellowCircle
                greenCircle
                Spacer()
                
                Button {
                    buttonLabel = "NEXT"
                    redCircle.opacity = 1
                } label: {
                    Text(buttonLabel)
                        .font(.title)
                        .foregroundColor(.white)
                        .frame(width: 200, height: 70)
                        .background(.black)
                        .cornerRadius(20)
                        .shadow(color: .black, radius: 10)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
