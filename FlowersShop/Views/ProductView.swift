//
//  ProductView.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 31/03/24.
//

import SwiftUI

struct ProductView: View {
    let sizes = ["Small", "Medium", "Big"]
    @State private var selectedSize = "Small"
    
    var body: some View {
        ZStack {
            ScrollView {
                AsyncImage(url: URL(string: "https://picsum.photos/400"))
                
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Bouquets").foregroundColor(.gray)
                        
                        Spacer()
                        
                        Label("4.9", systemImage: "star")
                    }
                    
                    Text("Blue Whites Bouquets").font(.title2)
                    
                    Text("Seller").bold()
                    
                    HStack {
                        AsyncImage(url: URL(string: "https://picsum.photos/id/30/50"))
                            .cornerRadius(25)
                        
                        VStack(alignment: .leading) {
                            Text("Jacob Doe").bold()
                            Text("Florist").foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "bubble.fill")
                        }.frame(width: 50, height: 50)
                            .background(.gray.opacity(0.2))
                            .cornerRadius(25)
                            .foregroundColor(.purple)
                        
                        Button {
                            //
                        } label: {
                            Image(systemName: "phone.fill")
                        }.frame(width: 50, height: 50)
                            .background(.gray.opacity(0.2))
                            .cornerRadius(25)
                            .foregroundColor(.purple)
                    }
                    
                    Text("Product Details").font(.title2).bold()
                    
                    Text("The most amazing thing about this product, is the beatiful of every flower that was made from scratch to this amazing point.")
                    
                    Text("Size").font(.title2).bold()
                    
                    Picker("Small", selection: $selectedSize) {
                        ForEach(sizes, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                    
                    VStack { }.frame(height: 100)
                }.padding()
            }
            
            VStack {
                HStack {
                    NavigationLink {
                        HomeView()
                    } label: {
                        Image(systemName: "arrow.backward")
                    }.foregroundColor(.black)
                        .padding()
                        .background(.white.opacity(0.5))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25).stroke()
                        )
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "heart")
                    }.foregroundColor(.black)
                        .padding()
                        .background(.white.opacity(0.5))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25).stroke()
                        )
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "arrowtriangle.forward")
                    }.foregroundColor(.black)
                        .padding()
                        .background(.white.opacity(0.5))
                        .cornerRadius(25)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25).stroke()
                        )
                }.padding(.horizontal, 30).padding(.top, 80)
                Spacer()
            }
            
            VStack {
                Spacer()
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Total Price").foregroundColor(.gray).font(.title)
                        
                        Text("$90.00MXN").font(.title3).bold()
                    }
                    
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Label("Add to cart", systemImage: "bag.fill")
                    }.frame(width: 200, height: 50).background(.purple).foregroundColor(.white).cornerRadius(25)
                }.padding(.horizontal)
                    .frame(width: UIScreen.screenWidth, height: 100)
                    .background()
                    .cornerRadius(20, corners: [.topLeft, .topRight])
                    .shadow(radius: 5)
            }
        }
        .navigationBarBackButtonHidden()
        .ignoresSafeArea()
    }
}

#Preview {
    ProductView()
}
