//
//  EmailTextField.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 29/03/24.
//

import SwiftUI

struct EmailTextField: View {
    @State var email: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Email").padding(.leading)
            TextField("example@example.com", text: $email).padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
        }
    }
}

#Preview {
    EmailTextField(email: "")
}
