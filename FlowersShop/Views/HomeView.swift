//
//  HomeView.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            HomeTab().tabItem {
                Label("", systemImage: "house")
            }
            
            LocationTab().tabItem {
                Label("", systemImage: "location")
            }
            
            WishlistTab().tabItem {
                Label("", systemImage: "heart")
            }
            
            ChatTab().tabItem {
                Label("", systemImage: "bubble")
            }
            
            ProfileTab().tabItem {
                Label("", systemImage: "person")
            }
        }.accentColor(.purple)
            .navigationBarBackButtonHidden()
    }
}

#Preview {
    HomeView()
}
