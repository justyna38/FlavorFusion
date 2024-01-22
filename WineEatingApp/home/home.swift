//
//  home.swift
//  WineEatingApp
//
//  Created by Justyna Warzecha on 12/01/2024.
//

import SwiftUI

struct home: View {
    @State private var isSearching = false
    @State private var searchText = ""
        
    var filteredWines: [Wine] {
          if searchText.isEmpty {
              return arrayWine
          } else {
              return arrayWine.filter { $0.nom.lowercased().contains(searchText.lowercased()) }
          }
      }
    var body: some View {
        NavigationView{
        ScrollView{
            VStack {
                
                
                headerView(searchText: $searchText)
                    .offset(y: -210)
                cardsView()
                    .frame(width: 400)
                    .offset(y: -170)
                
                
            }
        }
    }
    }
}

#Preview {
    home()
}

struct headerView: View {
    @Binding var searchText: String
    var wineSuggestions: [Wine] {
           arrayWine.filter { $0.nom.lowercased().contains(searchText.lowercased()) }
       }
    var body: some View {
        ZStack{
            
            Circle()
                .frame(width: 500)
                .foregroundColor(.principal)
            TextField("", text: $searchText)
                           .padding()
                           .overlay(
                               HStack {
                                   if searchText.isEmpty{
                                       Image(systemName: "magnifyingglass")
                                           .foregroundColor(.gray)
                                           .padding(.leading, 8)
                                       Spacer()
                                   }
                               }
                                .padding()
                           )
                           .frame(width: 300)
                           .textFieldStyle(RoundedBorderTextFieldStyle())
                           .autocapitalization(.none)
                .padding(.bottom)
            if !searchText.isEmpty {
                            List(wineSuggestions, id: \.id) { wine in
                                NavigationLink(
                                    destination: WineDetails(activateModal: .constant(true), wino: wine),
                                    label: {
                                        Text(wine.nom)
                                    }
                                )
                            }
                            .frame(width: 250, height: .infinity)
                            .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(.top, 300)
                        }
            
            Text("Flavor \nFusion")
                .font(. system(size: 50))
                .bold()
                .foregroundStyle(.white)
                .padding(.top, 200)
                .padding(.trailing, 170)
            Image("wine1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 50)
                .padding(.top, 300)
                .padding(.leading, 150)
            
        }
        
    }
}

struct cardsView: View {
    

    let columns = [
        GridItem(.flexible(minimum: 30)),
        GridItem(.flexible(minimum: 30)),
    ]

        var body: some View {
            ScrollView {
                Text("Select the dish")
                    .font(.title2)
                    .bold()
                    .padding(.trailing, 190)
                
               
                    VStack{
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(arrayPlats) { plat in
                                NavigationLink(destination: WineList(plat: plat)){
                                    PlatView(plat: plat)
                                }
                            }
                        }
                        .padding()
                    }
                }
            
             }
}
struct PlatView: View {
    let plat: Plat

    var body: some View {
      
        ZStack {
            
            Image(plat.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            Rectangle()
                .frame(width: 150, height: 150)
                .cornerRadius(8)
                .foregroundColor(.cardCol.opacity(0.4))
                
            
            Text(plat.titre.rawValue)
                .font(.title3)
                .bold()
                .foregroundStyle(.white)
                .padding(.top, 8)
        }
        
        
    }
}
