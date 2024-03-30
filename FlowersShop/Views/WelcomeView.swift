//
//  WelcomeView.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 29/03/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    CardPresentation()
                    Spacer()
                    CardPresentation().offset(y: 150)
                }.padding(.horizontal)
                
                ZStack { }.frame(height: 120)
                
                Text("Your Premier Choice For").font(.title).bold()
                
                Text("Effortless Flower Delivery").font(.title).bold().foregroundColor(.purple)
                
                Text("Get to know this amazing online store to buy flowers for that special person.").foregroundColor(.gray)
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .padding(.vertical)
                
                NavigationLink {
                    RegisterView()
                } label: {
                    Text("Let´s Get Started")
                }.padding()
                    .frame(width: 300, height: 50)
                    .background(.purple)
                    .foregroundColor(.white)
                    .cornerRadius(25)
                
                HStack {
                    Text("Already have an account?")
                    NavigationLink {
                        LoginView()
                    } label: {
                        Text("Sign in").underline(color: .purple)
                    }.foregroundColor(.purple)
                }.padding(.vertical)
                
                Spacer()
            }
        }
    }
}

#Preview {
    WelcomeView()
}
