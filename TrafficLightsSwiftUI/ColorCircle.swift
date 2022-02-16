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
            .frame(width: UIScreen.main.bounds.size.width / 2,
                   height: UIScreen.main.bounds.size.height / 4)
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
