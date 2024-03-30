//
//  RegisterView.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var checkedBox = false
    
    var body: some View {
        VStack {
            Text("Create Account").font(.largeTitle)
            
            Text("Fill your information below or register with your social account")
                .foregroundColor(.gray)
                .font(.callout)
                .multilineTextAlignment(.center)
                .padding(.bottom, 20)
            
            NameTextField(name: name)
            
            EmailTextField(email: email)
            
            PassWordTextField(password: password)
            
            HStack {
                Checkbox(checkedBox: checkedBox)
                
                Text("Agree with")
                
                Button {
                    //
                } label: {
                    Text("Terms & Condition").foregroundColor(.purple)
                        .underline(color: .purple)
                }
                
                Spacer()
            }.padding(.horizontal)
            
            NavigationLink {
                //
            } label: {
                Text("Sign Up").frame(width: 300, height: 50)
                    .foregroundColor(.white)
                    .background(.purple)
                    .cornerRadius(25)
            }.padding(.vertical)
            
            HStack {
                VStack {
                    Divider()
                }
                Text("Or sign in with").foregroundColor(.gray).font(.callout)
                VStack {
                    Divider()
                }
            }.padding(.horizontal).padding(.vertical)
            
            HStack(spacing: 40) {
                Image(systemName: "apple.logo")
                Image(systemName: "g.circle")
                Image(systemName: "f.circle")
            }.font(.system(size: 50)).padding()
            
            HStack {
                Text("Already have an account?")
                
                NavigationLink {
                    LoginView()
                } label: {
                    Text("Sign In").foregroundColor(.purple).underline(color: .purple)
                }
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    RegisterView()
}
