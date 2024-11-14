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
            VStack {
                Text("Cupertino, CA")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding(.bottom, 70)
                
                VStack {
                    Image(systemName: "cloud.sun.rain")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .foregroundStyle(.white)
                        .padding(.bottom, 40)
                    
                }
                
                VStack {
                    Text("80°F")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
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
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.cyan.opacity(0.9))
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
