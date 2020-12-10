//
//  ContentView.swift
//  TrafficLight
//
//  Created by Никита Гвоздиков on 10.12.2020.
//

import SwiftUI




struct TrafficLight: View {
    
    @State var count = 0
    @State var redLight = OneCircle(color: .red, opacity: 0.2)
    @State var orangeLight = OneCircle(color: .orange, opacity: 0.2)
    @State var greenLight = OneCircle(color: .green, opacity: 0.2)
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack {
                redLight
                orangeLight
                greenLight
                Spacer()
                
                Button(action: changeColor) {
                    ZStack{
                        ButtonNextColor()
                        Text(count == 0 ? "Start" : "Next")
                            .foregroundColor(.white).font(.title)
                    }
                }
            }.padding()
        }
    }
    
    
    
    fileprivate func changeColor() {
        
        
        if count < 3 {
            count += 1
        } else {
            count = 1
        }
        
        
        switch count {
        case 1:
            redLight.opacity = 1
            greenLight.opacity = 0.2
        case 2:
            redLight.opacity = 0.2
            orangeLight.opacity = 1
        case 3:
            orangeLight.opacity = 0.2
            greenLight.opacity = 1
        default:
            break
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}
