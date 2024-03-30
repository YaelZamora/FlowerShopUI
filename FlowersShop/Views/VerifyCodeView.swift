//
//  VerifyCodeView.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct VerifyCodeView: View {
    @State private var code1 = ""
    @State private var code2 = ""
    @State private var code3 = ""
    @State private var code4 = ""
    
    var body: some View {
        VStack {
            VStack { }.frame(height: 100)
            
            Text("Verify Code").font(.largeTitle)
            
            Text("Plese enter the code we just sent to email").foregroundColor(.gray)
            
            Text("example@example.com").foregroundColor(.purple)
            
            Code(code1: code1, code2: code2, code3: code3, code4: code4)
            
            Text("Didn't recive OTP?").foregroundColor(.gray).padding()
            
            Button {
                //
            } label: {
                Text("Resend Code").foregroundColor(.black).underline()
            }
            
            NavigationLink {
                //
            } label: {
                Text("Verify").frame(width: 300, height: 50).foregroundColor(.white).background(.purple).cornerRadius(25)
            }
            
            Spacer()
        }
    }
}

#Preview {
    VerifyCodeView()
}
