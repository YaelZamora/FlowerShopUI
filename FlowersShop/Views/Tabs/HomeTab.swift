//
//  HomeTab.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct HomeTab: View {
    @State private var selectedLocation = "New York, USA"
    
    private let locations = ["New York, USA", "CDMX, MEX", "Monterrey, MEX", "Aguascalientes, MEX"]
    
    @State private var buscar = ""
    
    private let types = ["All", "Bouquets", "Flower", "Indoor", "Outdoor", "Gifts"]
    @State private var tapped = [false, false, false, false, false, false]
    
    let columns = [GridItem(.flexible(minimum: 200, maximum: 200)), GridItem(.flexible(minimum: 200, maximum: 200))]
    
    var body: some View {
        VStack {
            ZStack {
                Color.purple.ignoresSafeArea()
                
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Location").foregroundColor(.white)
                            
                            Picker(selection: $selectedLocation) {
                                ForEach(locations, id: \.self) {
                                    Label($0, systemImage: "location").foregroundColor(.white)
                                }
                            } label: {
                                Label(selectedLocation, systemImage: "location")
                            }.accentColor(.white)
                        }
                        
                        Spacer()
                        
                        NavigationLink {
                            //
                        } label: {
                            Image(systemName: "cart.fill")
                        }.padding().background(.thinMaterial.opacity(0.5)).cornerRadius(10).foregroundColor(.white)
                        
                        NavigationLink {
                            //
                        } label: {
                            Image(systemName: "bell.fill")
                        }.padding()
                            .background(.thinMaterial.opacity(0.5))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }.padding(.horizontal).padding(.top, 60)
                    
                    Spacer()
                                        
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                            
                            TextField("Buscar", text: $buscar)
                            
                            Image(systemName: "qrcode.viewfinder")
                        }.frame(width: 250)
                            .padding()
                            .background()
                            .cornerRadius(10)
                        
                        Spacer()
                        
                        Image(systemName: "switch.2").padding()
                            .background()
                            .cornerRadius(10)
                    }.padding(.horizontal).padding(.bottom, 20)
                }
            }.frame(width: UIScreen.screenWidth, height: 275)
                .background(.red)
                .cornerRadius(20, corners: [.bottomLeft, .bottomRight])
            
            ScrollView {
                HStack {
                    Text("Special Offers").font(.title3).bold()
                    
                    Spacer()
                    
                    Text("See all").foregroundColor(.purple)
                }.padding(.horizontal)
                
                TabView {
                    OfferCard()
                    OfferCard()
                    OfferCard()
                }
                .frame(height: 200)
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                
                HStack {
                    Text("Recomended For You").font(.title2).bold()
                    
                    Spacer()
                    
                    Button("See All") {
                        //
                    }.foregroundColor(.purple)
                }.padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<types.count) { index in
                            Text(types[index]).padding(.horizontal)
                                .padding(.vertical, 5)
                                .background((tapped[index]) ? .purple : .white)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20).stroke()
                                )
                                .onTapGesture {
                                    withAnimation {
                                        tapped[index].toggle()
                                    }
                                }
                        }
                    }.padding(.leading)
                }
                
                LazyVGrid(columns: columns) {
                    ForEach(0..<20) { index in
                        NavigationLink {
                            ProductView()
                        } label: {
                            ProductCard().foregroundColor(.primary)
                        }
                    }
                }
                
                VStack { }.frame(height: 100)
            }
        }.ignoresSafeArea()
    }
}

#Preview {
    HomeTab()
}
