//
//  CardPresentation.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 29/03/24.
//

import SwiftUI

struct CardPresentation: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://picsum.photos/150/250")).cornerRadius(80)
            Text("#Flowers").padding()
                .background(.pink)
                .bold()
                .foregroundColor(.white)
                .cornerRadius(20)
                .offset(y: -45)
        }
    }
}

#Preview {
    CardPresentation()
}
