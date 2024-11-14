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
            LinearGradient(colors: [.blue, .white], startPoint: .topLeading, endPoint: .bottomTrailing)
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
                
                HStack {
                    WeatherDays()
                        .padding(.horizontal, 10)
                    
                    WeatherDays()
                    
                    WeatherDays()

                    WeatherDays()
                    
                    WeatherDays()

                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("See More")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDays: View {
    var body: some View {
        VStack {
            Text("TUE")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            Image(systemName: "cloud.sun.rain")
                .resizable()
                .frame(width: 50, height: 50)
                .foregroundStyle(.white)
            
            Text("80°F")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
        }
    }
}
