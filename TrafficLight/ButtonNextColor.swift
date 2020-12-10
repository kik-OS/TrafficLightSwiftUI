//
//  ButtonNextColor.swift
//  TrafficLight
//
//  Created by Никита Гвоздиков on 10.12.2020.
//

import SwiftUI



struct ButtonNextColor: View {
    
    var body: some View {
        
        Color(.black)
   
                .frame(width: 220, height: 45)
                .overlay(RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white, lineWidth: 2))
                   
                
        
    }
}



struct ButtonNextColor_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNextColor()
    }
}
