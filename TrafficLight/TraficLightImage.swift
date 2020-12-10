//
//  TraficLightImage.swift
//  TrafficLight
//
//  Created by Никита Гвоздиков on 10.12.2020.
//

import SwiftUI

struct TraficLightImage: View {
    var body: some View {
            Image("trafficLight")
                //вызываем для изменения размера
                .resizable()
                //меняем размер
                .frame(width: 600, height: 600)
                
        }
    }


struct TraficLightImage_Previews: PreviewProvider {
    static var previews: some View {
        TraficLightImage()
    }
}
