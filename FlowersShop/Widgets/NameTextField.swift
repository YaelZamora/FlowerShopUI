//
//  NameTextField.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct NameTextField: View {
    @State var name: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Name").padding(.leading)
            TextField("Your Name", text: $name).padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
        }
    }
}

#Preview {
    NameTextField(name: "")
}
