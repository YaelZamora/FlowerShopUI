//
//  WishlistTab.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct WishlistTab: View {
    @State private var selectedTab = true
    @State private var selectedSecondTab = false
    
    private let types = ["All", "Bouquets", "Flower", "Indoor", "Outdoor", "Gifts"]
    @State private var tapped = [false, false, false, false, false, false]
    
    let columns = [GridItem(.flexible(minimum: 200, maximum: 200)), GridItem(.flexible(minimum: 200, maximum: 200))]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Text("My Wishlist").bold().font(.title3)
                
                Spacer()
            }.frame(height: 100)
            
            HStack {
                VStack {
                    Text("Products").font(.title2).foregroundColor((selectedTab) ? .purple : .primary)
                    
                    RoundedRectangle(cornerRadius: 10).frame(height: 10)
                        .foregroundColor((selectedTab) ? .purple : .clear)
                }.onTapGesture {
                    selectedTab.toggle()
                    selectedSecondTab.toggle()
                }
                
                VStack {
                    Text("Florist").font(.title2).foregroundColor((selectedSecondTab) ? .purple : .primary)
                    
                    RoundedRectangle(cornerRadius: 10).frame(height: 10)
                        .foregroundColor((selectedSecondTab) ? .purple : .clear)
                }.onTapGesture {
                    selectedSecondTab.toggle()
                    selectedTab.toggle()
                }
            }
            
            ScrollView {
                if selectedTab {
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
                    
                    VStack { }.frame(height: 50)
                    
                } else {
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
                    
                    VStack { }.frame(height: 50)
                }
            }
            
            Spacer()
        }
    }
}

#Preview {
    WishlistTab()
}
