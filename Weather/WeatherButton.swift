//
//  WeatherButton.swift
//  Weather
//
//  Created by YURIY IZBASH on 9. 12. 24.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 250, height: 50)
            .font(.system(size: 20, weight: .semibold, design: .default))
            .foregroundColor(textColor)
            .background(backgroundColor)
            .cornerRadius(10)
            .padding()
    }
}
