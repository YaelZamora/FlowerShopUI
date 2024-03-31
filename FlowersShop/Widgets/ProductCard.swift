//
//  ProductCard.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 31/03/24.
//

import SwiftUI

struct ProductCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                AsyncImage(url: URL(string: "https://picsum.photos/150")).cornerRadius(10)
                
                Button {
                    //
                } label: {
                    Image(systemName: "heart.fill")
                }.padding()
                    .background()
                    .cornerRadius(25)
                    .foregroundColor(.gray)
                    .position(x: 110, y: 40)
            }.frame(width: 150, height: 150)
            
            HStack {
                Text("Blue White Bouquets").lineLimit(1).font(.callout)
                Label("4.9", systemImage: "star").font(.callout)
            }
            
            Text("$50.00MXN").bold()
        }.frame(width: 150)
    }
}

#Preview {
    ProductCard()
}
