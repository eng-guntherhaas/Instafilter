//
//  ContentView.swift
//  Instafilter
//
//  Created by Gunther Masi Haas on 11/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var processedImage: Image?
    @State private var filterIntensity = 0.5

    var body: some View {
        NavigationView {
            Spacer()
            
            if let processedImage {
                processedImage
                    .resizable()
                    .scaledToFit()
            } else {
                ContentUnavailableView("No Picture", systemImage: "photo.badge.plus")
            }
            
            Spacer()
            
            HStack {
                Text("Intensity")
                Slider(value: $filterIntensity)
            }
            .padding(.vertical)
            
            HStack {
                Button("Change filter", action: changeFilter)
                
                Spacer()
                
                //share
            }
        }
        .padding([.horizontal, .bottom])
        .navigationTitle("Instafilter")
    }
    
    func changeFilter() {
        
    }
}

#Preview {
    ContentView()
}
