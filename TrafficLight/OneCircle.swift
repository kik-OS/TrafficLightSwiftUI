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
                .frame(width: 132, height: 132)
                .clipShape(Circle())
                .padding(4)
    }
}

struct ThreeCircles_Previews: PreviewProvider {
    static var previews: some View {
        OneCircle(color: .green, opacity: 1.0)
    }
}
