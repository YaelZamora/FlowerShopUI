//
//  Checkbox.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct Checkbox: View {
    @State var checkedBox: Bool
    
    var body: some View {
        ZStack {
            if checkedBox {
                Image(systemName: "checkmark").foregroundColor(.white)
            }
        }.frame(width: 30, height: 30).overlay(
            RoundedRectangle(cornerRadius: 10).stroke(.purple)
        ).background((checkedBox) ? .purple : .white.opacity(0))
            .onTapGesture {
                withAnimation {
                    checkedBox.toggle()
                }
            }
    }
}

#Preview {
    Checkbox(checkedBox: false)
}
