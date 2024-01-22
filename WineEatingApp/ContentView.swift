//
//  ContentView.swift
//  WineEatingApp
//
//  Created by Justyna Warzecha on 12/01/2024.
//

import SwiftUI

struct ContentView: View {
    //@State private var favoritesChanged = false
    
    var body: some View {
        TabView {
            home()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            FavorisView()
                .tabItem {
                    Label("Favoris", systemImage: "heart")
                }
                          
                            
        }
        .tint(.principal.opacity(0.7))
    }
}


#Preview {
    ContentView()
}
