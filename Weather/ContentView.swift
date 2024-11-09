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
                    VStack {
                        Text("TUE")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.rain")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.white)
                        
                        Text("80°F")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("TUE")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.rain")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.white)
                        
                        Text("80°F")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
                    VStack {
                        Text("TUE")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                        
                        Image(systemName: "cloud.sun.rain")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundStyle(.white)
                        
                        Text("80°F")
                            .font(.title)
                            .foregroundStyle(.white)
                    }
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
