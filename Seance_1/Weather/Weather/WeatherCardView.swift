//
//  WeatherCardView.swift
//  Weather
//
//  Created by Arthur Bachelet on 2026-07-23.
//

import SwiftUI

struct WeatherCardView: View {
    var body: some View {
        Image("Cloudy-day")
            .resizable()
            .frame(width: 100, height: 100)
            .scaledToFit()
            .padding()
            .background(.gray.opacity(0.1))
            .clipShape(Circle())
        Text("20°C")
            .font(.largeTitle)
        Text("Sunny with some clouds")
            .font(.title2)
    
        (Text(Image(systemName: "location.circle"))
         + Text(" Montréal"))
            .padding()
    }
}

#Preview {
    WeatherCardView()
}
