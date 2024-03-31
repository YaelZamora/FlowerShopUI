//
//  LocationCard.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 31/03/24.
//

import SwiftUI

struct LocationCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            AsyncImage(url: URL(string: "https://picsum.photos/210/120"))
                .cornerRadius(15)
                .overlay(
                    VStack {
                        HStack {
                            Label("4.9", systemImage: "star.fill").padding(.horizontal, 5)
                                .padding(.vertical, 5)
                                .background()
                                .cornerRadius(5)
                            
                            Spacer()
                            
                            Image(systemName: "heart.fill").foregroundColor(.red)
                                .frame(width: 40, height: 40)
                                .background()
                                .cornerRadius(20)
                        }.padding(.horizontal, 5).padding(.top, 5)
                        Spacer()
                    }
                )
            
            Text("The Blooming Haven")
            
            HStack {
                Label("Jacob Doe", systemImage: "person").font(.caption)
                Label("New York, USA", systemImage: "location").font(.caption)
            }.foregroundColor(.gray)
            
            Text("$40.00-250.00").bold().foregroundColor(.purple)
            
        }.frame(width: 220, height: 220).background().cornerRadius(15)
    }
}

#Preview {
    LocationCard()
}
