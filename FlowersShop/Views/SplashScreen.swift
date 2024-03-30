//
//  SplashScreen.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 29/03/24.
//

import SwiftUI

struct SplashScreen: View {
    @State private var navIntro = false
    
    var body: some View {
        ZStack {
            if navIntro {
                WelcomeView()
            } else {
                VStack {
                    Image(systemName: "camera.macro")
                        .font(.system(size: 60))
                        .foregroundColor(.purple)
                    Text("Flower Shop").font(.title).bold()
                }
            }
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                withAnimation{
                    navIntro = true
                }
            }
        }
    }
}

#Preview {
    SplashScreen()
}
