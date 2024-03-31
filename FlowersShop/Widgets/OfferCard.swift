//
//  OfferCard.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 31/03/24.
//

import SwiftUI

struct OfferCard: View {
    var body: some View {
        HStack {
            ZStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Todays Offers")
                        
                        Text("Get Special Offer").bold().font(.title2)
                        
                        HStack {
                            Text("Up to")
                        
                            Text("20").font(.largeTitle).bold().offset(y: 10)
                        }
                        
                        Button {
                            //
                        } label: {
                            Text("Order Now").frame(width: 150, height: 40)
                                .background(.purple)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                        }
                    }.padding(.leading)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    AsyncImage(url: URL(string: "https://picsum.photos/200")).cornerRadius(100, corners: [.topLeft, .bottomLeft]).offset(x: 70)
                }
            }
        }.frame(width: 350, height: 200).background(.gray.opacity(0.2)).cornerRadius(20)
    }
}

#Preview {
    OfferCard()
}
