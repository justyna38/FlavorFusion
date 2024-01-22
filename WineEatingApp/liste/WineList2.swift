////
////  WineList.swift
////  WineEatingApp
////
////  Created by Justyna Warzecha on 12/01/2024.
////
//
//import SwiftUI
//
//struct WineList: View {
//    let plat: Plat
//    @State private var selectedWine: Wine?
//    var body: some View {
//        ScrollView{
//            NavigationView{
//                Text("Wine for \(plat.titre.rawValue)")
//                    .font(.largeTitle)
//                    .bold()
//                    .padding(.bottom, 60)
//                    .padding(.top)
//                    .padding(.trailing, 120)
//                VStack(spacing: 70){
//                    //Text("Vin pour boeuf")
//                    WineView(selectedWine: $selectedWine, plat: plat)
//                    
//                    //.listRowInsets(EdgeInsets())
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    WineList(plat: arrayPlats[0])
//}
//
//struct WineView: View {
//    @Binding var selectedWine: Wine?
//    @State var activateModal = false
//    let plat: Plat
//    func gradientForWineColor(_ color: String) -> LinearGradient {
//        switch color {
//        case "jaune":
//            return LinearGradient(
//                gradient: Gradient(colors: [.jauneWine1, .jauneWine2]),
//                startPoint: .top, endPoint: .bottom)
//        case "rosé":
//            return LinearGradient(
//                gradient: Gradient(colors: [.roseWine1, .roseWine2]),
//                startPoint: .top, endPoint: .bottom)
//        case "rouge":
//            return LinearGradient(
//                gradient: Gradient(colors: [.principal, .second]),
//                startPoint: .top, endPoint: .bottom)
//        // Add more cases as needed
//        default:
//            return LinearGradient(
//                gradient: Gradient(colors: [.principal, .second]),
//                startPoint: .top, endPoint: .bottom)
//        }
//    }
//    
//    
//    var body: some View {
//        let filteredWines = arrayWine.filter { $0.metz.contains(plat.titre) }
//        ForEach(filteredWines, id: \.id){  wine in
//            
//        HStack{
//            
//                ZStack{
//                    Rectangle()
//                        .fill(gradientForWineColor(wine.color))
//                        .frame(width: 150, height: 190)
//                        .cornerRadius(5.0)
//                    Image(wine.imageTitle)
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 170, height: 120)
//                        .padding(.bottom, 49)
//                        .padding(.leading)
//                }
//                VStack(alignment: .leading, spacing: 14){
//                    Text(wine.nom)
//                        .textCase(.uppercase)
//                        .font(.system(size: 24))
//                        .bold()
//                        .background(
//                            GeometryReader { geometry in
//                                Rectangle()
//                                    .frame(height: 3)
//                                    .frame(width: geometry.size.width)
//                                    .padding(.top, 35)
//                                
//                            }
//                        )
//                    Text(wine.color)
//                        .textCase(.uppercase)
//                        .font(.system(size: 18))
//                        .padding(.top, 35)
//                    HStack{
//                    ForEach(wine.gout, id: \.self){gout in
//                            Text(gout)
//                                .textCase(.uppercase)
//                                .font(.system(size: 14))
//                        }
//                    }
//                    //.padding(.bottom)
//                    Button(action: {
//                        selectedWine = wine
//                        activateModal.toggle()
//                    }, label: {
//                        Text("Know more")
//                            .bold()
//                            .foregroundStyle(.white)
//                            .padding(15)
//                            .background(.principal)
//                            .cornerRadius(5)
//                    })
//                    .sheet(isPresented: $activateModal, content: {
//                        WineDetails(activateModal: $activateModal, wino: wine)
//
//                    })
//                    
//                    
//                }
//                //.padding(.trailing, 20)
//                Spacer()
//            }
//        }
//        
//    }
//}
