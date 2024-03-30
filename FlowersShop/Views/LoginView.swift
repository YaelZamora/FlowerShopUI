//
//  LoginView.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 29/03/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            Text("Sign in").font(.largeTitle)
            
            Text("Hi! Welcome back, you've been missed").foregroundColor(.gray)
                .font(.callout)
                .padding(.bottom, 50)
            
            EmailTextField(email: email)
            
            PassWordTextField(password: password)
            
            HStack {
                Spacer()
                NavigationLink {
                    //
                } label: {
                    Text("Forgot password?").underline(color: .purple).foregroundColor(.purple)
                }
            }.padding(.horizontal)
            
            NavigationLink {
                //
            } label: {
                Text("Sign in").frame(width: 300, height: 50).foregroundColor(.white).background(.purple).cornerRadius(25)
            }.padding(.vertical, 40)
            
            HStack {
                VStack {
                    Divider()
                }
                Text("Or sign in with").foregroundColor(.gray).font(.callout)
                VStack {
                    Divider()
                }
            }.padding(.horizontal)
            
            HStack(spacing: 40) {
                Image(systemName: "apple.logo")
                Image(systemName: "g.circle")
                Image(systemName: "f.circle")
            }.font(.system(size: 50)).padding()
            
            HStack {
                Text("Don't have an account?")
                
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Sign Up").foregroundColor(.purple).underline(color: .purple)
                }
            }
        }.navigationBarBackButtonHidden()
    }
}

#Preview {
    LoginView()
}
