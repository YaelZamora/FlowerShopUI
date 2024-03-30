//
//  PassWordTextField.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 29/03/24.
//

import SwiftUI

struct PassWordTextField: View {
    @State var password: String
    @State var showPassword = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Password").padding(.leading)
            HStack {
                if showPassword {
                    TextField("Password", text: $password)
                } else {
                    SecureField("Password", text: $password)
                }
                Spacer()
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: (showPassword) ? "eye" : "eye.slash")
                }.foregroundColor(.black)
            }.padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
        }
    }
}

#Preview {
    PassWordTextField(password: "")
}
