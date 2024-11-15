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
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}


