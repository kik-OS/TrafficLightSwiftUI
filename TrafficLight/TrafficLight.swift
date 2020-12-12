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
            
            Color(#colorLiteral(red: 0.2112910748, green: 0.192193538, blue: 0.1756046414, alpha: 0.8884352122))
                .ignoresSafeArea()
            
            VStack{
                ZStack{
                    VStack{
                        redLight
                        orangeLight
                        greenLight
                    }
                    TraficLightImage()
                }
                Spacer()
                
                Button(action: changeColor) {
                    ZStack{
                        ButtonNextColor()
                        Text(count == 0 ? "Start" : "Next")
                            .foregroundColor(count == 0 ? Color(#colorLiteral(red: 0.5880622268, green: 0.5843623877, blue: 0.5801249146, alpha: 1)) : .white)
                            .font(.title)
                            .aspectRatio(contentMode: .fill)
                    }.padding()
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
