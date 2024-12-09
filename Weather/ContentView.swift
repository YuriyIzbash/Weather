//
//  ContentView.swift
//  Weather
//
//  Created by YURIY IZBASH on 6. 12. 24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            BackgroundView(topColor: .blue, middleColor: Color("darkGreen"), bottomColor: .yellow)
            
            VStack{
                CityTextView(cityName: "Cupatino, CA")
                
                MainWeatherStatusView(imageName: "cloud.sun.fill", temperature: 74)
                
                HStack(spacing: 20) {
                    ForEach(0..<5, id: \.self) { num in
                        WeatherDayView(dayOfWeek: "TUE",
                                       imageName: "cloud.sun.fill",
                                       temperature: 74)
                    }
                }
                Spacer()
                
                Button {
                    print("Button tapped...")
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .white,
                                  backgroundColor: Color("lightBlue"))
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
            
        VStack (alignment: .center) {
            
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            
            VStack(spacing: 8) {
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60, height: 60)
                
                Text("\(temperature)°")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var middleColor: Color
    var bottomColor: Color
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [topColor, middleColor, bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°F")
                .font(.system(size: 64, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
        .padding(.bottom, 80)
    }
}
