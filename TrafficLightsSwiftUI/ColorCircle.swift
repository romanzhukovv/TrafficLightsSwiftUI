//
//  ColorCircle.swift
//  TrafficLightsSwiftUI
//
//  Created by Roman Zhukov on 15.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 200, height: 200)
            .opacity(opacity)
            .overlay(Circle().stroke(color, lineWidth: 3).opacity(0.5))
            .shadow(color: color, radius: 20)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .green, opacity: 0.3)
    }
}
