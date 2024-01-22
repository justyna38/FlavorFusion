//
//  FavorisView.swift
//  WineEatingApp
//
//  Created by Justyna Warzecha on 20/01/2024.
//

import SwiftUI
import WrappingStack

struct FavorisView: View {
    @State private var favoriteWines: [Wine] = []

    var body: some View {
            NavigationView {
                List(favoriteWines, id: \.self) { wine in
                    NavigationLink(destination: WineDetails(activateModal: .constant(true), wino: wine)) {
                        WineRow(wine: wine)
                    }
                }
                .navigationBarTitle("Favoris", displayMode: .inline)
                .onAppear {
                    refreshFavorites()
                }
            }
        }

        func refreshFavorites() {
            favoriteWines = arrayWine.filter { $0.isFavorite }
        }
    }

    struct WineRow: View {
        var wine: Wine
        
        var body: some View {
            HStack {
                ZStack {
                    Image(wine.imageTitle)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 90)
                        .cornerRadius(5.0)
                }
                
                VStack(alignment: .leading) {
                    Text(wine.nom)
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    ForEach(wine.metz, id: \.self) { plat in
                        Text(plat.rawValue)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding(.leading, 8)
            }
            .padding(.vertical, 8)
        }
    }



#Preview {
    FavorisView()
}
