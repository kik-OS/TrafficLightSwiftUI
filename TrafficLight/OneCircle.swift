//
//  ThreeCircles.swift
//  TrafficLight
//
//  Created by Никита Гвоздиков on 10.12.2020.
//

import SwiftUI

struct OneCircle: View {
    
    let color: UIColor
    var opacity: Double
    
    
    var body: some View {
            Color(color)
                .opacity(opacity)
                .frame(width: 130, height: 130)
                .clipShape(Circle())
//                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .padding()
    }
}

struct ThreeCircles_Previews: PreviewProvider {
    static var previews: some View {
        OneCircle(color: .green, opacity: 1.0)
    }
}
