//
//  ContentView.swift
//  Weather
//
//  Created by Christian Vladimir Garzón Gallardo on 08/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color("lightBlue")], startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Ciudad de México")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .padding()
                }
                
                Text("24°C")
                    .font(.system(size: 70))
                    .foregroundStyle(.white)
                
                HStack(alignment: .top, spacing: 20) {
                    WeatherDayView(dayOfWeek: "Lun", imageName: "cloud.moon.fill", temperature: 21)
                    WeatherDayView(dayOfWeek: "Mar", imageName: "cloud.sun.rain.fill", temperature: 19)
                    WeatherDayView(dayOfWeek: "Mie", imageName: "cloud.sun.fill", temperature: 25)
                    WeatherDayView(dayOfWeek: "Jue", imageName: "smoke.fill", temperature: 18)
                    WeatherDayView(dayOfWeek: "Vie", imageName: "sun.horizon.fill", temperature: 15)
                    WeatherDayView(dayOfWeek: "Vie", imageName: "cloud.bolt.rain.fill", temperature: 15)
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
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 22))
                .foregroundStyle(.white)
                .fontWeight(.semibold)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            Text("\(temperature)°C")
                .font(.system(size:  15))
                .foregroundStyle(.white)
                .fontWeight(.semibold)
        }
    }
}
