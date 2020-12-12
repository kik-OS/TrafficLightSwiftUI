//
//  ButtonNextColor.swift
//  TrafficLight
//
//  Created by Никита Гвоздиков on 10.12.2020.
//

import SwiftUI



struct ButtonNextColor: View {
    
    var body: some View {
        
        Color(#colorLiteral(red: 0.2112910748, green: 0.192193538, blue: 0.1756046414, alpha: 1))
            
            .frame(width: 220, height: 45)
            .clipShape(RoundedRectangle(cornerRadius: 15))
            .overlay(RoundedRectangle(cornerRadius: 15)
            .stroke(Color(#colorLiteral(red: 0.03142187372, green: 0.03531267494, blue: 0.03529834747, alpha: 1)), lineWidth: 5))
    }
}



struct ButtonNextColor_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNextColor()
    }
}
