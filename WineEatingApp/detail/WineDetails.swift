//
//  WineDetails.swift
//  WineEatingApp
//
//  Created by Justyna Warzecha on 13/01/2024.
//

import SwiftUI
import WrappingStack


struct WineDetails: View {
    @Environment(\.dismiss) var dismiss
    @Binding var activateModal: Bool
    @State private var isFavorite: Bool {
        didSet {
            UserDefaults.standard.set(isFavorite, forKey: "isFavorite_\(wino.id)")
        }
    }

    var wino: Wine

    init(activateModal: Binding<Bool>, wino: Wine) {
        self._activateModal = activateModal
        self.wino = wino
        self._isFavorite = State(initialValue: UserDefaults.standard.bool(forKey: "isFavorite_\(wino.id)"))
    }

    func addToFavorites() {
        if let index = arrayWine.firstIndex(where: { $0.id == wino.id }) {
            var updatedWine = arrayWine[index]
            updatedWine.isFavorite.toggle()
            arrayWine[index] = updatedWine
            isFavorite = updatedWine.isFavorite
        }
    }

//    func toggleFavorites() {
//        if let index = arrayWine.firstIndex(where: { $0.id == wino.id }) {
//            arrayWine[index].isFavorite.toggle()
//            isFavorite = arrayWine[index].isFavorite
//        }
//    }

    var body: some View {
        ScrollView {
            VStack {
                ExtractedView(wino: wino)
                    .offset(y: -160)
                    .padding(.top, 40)
                DetailsPoint(wino: wino)
                    .offset(y: -420)
                    .offset(x: 50)
                VStack(alignment: .leading) {
                    Text(wino.description)
                        .font(.system(size: 18))
                    Button(action: {
                        addToFavorites()
                    }, label: {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                    })
                    .foregroundColor(.principal)
                    .font(.title)
                    .padding(.leading, 300)
                }
                .frame(width: 350)
                .padding()
                .offset(y: -400)
            }
        }
        .frame(height: 1000)
    }
}




#Preview {
    WineDetails(activateModal: .constant(true), wino: arrayWine[0])
}

struct ExtractedView: View {
    let wino: Wine
    var body: some View {
        ZStack{
            
            Image("vignoble")
                .resizable()
                .scaledToFill()
                .cornerRadius(8)
                .frame(width: 240, height: 240)
            //.padding()
            
            Rectangle()
                .frame(width: 363, height: 239)
                .cornerRadius(8)
                .foregroundColor(.second.opacity(0.3))
            ZStack{
                Text(wino.nom)
                    .font(.system(size: 34))
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.top, 50)
                    .padding(.leading, 70)
            }
            .frame(width: 300)
            Image(wino.imageTitle)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 240, height: 500)
                    .padding(.trailing, 200)
                    .padding(.top, 300)
        }
    }
}

struct DetailsPoint: View {
    let wino: Wine
    var body: some View {
        VStack(spacing: 30){
            HStack(spacing: 15){
                VStack(alignment: .leading){
                    Text("Style")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.gray)
                    Text(wino.color)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                VStack(alignment: .leading){
                    Text("Alcohol")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.gray)
                    Text(wino.degrees) + Text("%")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            HStack(spacing: 15){
                VStack(alignment: .leading){
                    Text("Region")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.gray)
                    Text("\(wino.pays) \(wino.flag)")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                VStack(alignment: .leading){
                    Text("Grape")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.gray)
                    Text(wino.cepage)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
          
                VStack(alignment: .leading, spacing: 2){
                    Text("Pairs with")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.gray)
                    WrappingHStack(id: \.self, alignment: .leading){
                        ForEach(wino.metz, id: \.self){metz in
                            Text("\(metz.rawValue) ")
                        }
                }
            }
            
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .padding(.leading,30)
        .frame(width: 250)
    }
}


