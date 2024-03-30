//
//  Code.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI

struct Code: View {
    enum FocusedField {
        case firstCode, secondCode, thirdCode, fourthCode
    }
    
    @State var code1: String
    @State var code2: String
    @State var code3: String
    @State var code4: String
    @FocusState private var focusedField: FocusedField?
    
    var body: some View {
        HStack {
            HStack {
                Spacer()
                TextField("", text: $code1.max(1)).frame(width: 20)
                    .underlineTextField()
                    .focused($focusedField, equals: .firstCode)
                    .onChange(of: code1) {
                        focusedField = .secondCode
                    }
                Spacer()
            }.frame(width: 75, height: 75)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            HStack {
                Spacer()
                TextField("", text: $code2.max(1)).frame(width: 20)
                    .underlineTextField()
                    .focused($focusedField, equals: .secondCode)
                    .onChange(of: code2) {
                        focusedField = .thirdCode
                    }
                Spacer()
            }.frame(width: 75, height: 75)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            HStack {
                Spacer()
                TextField("", text: $code3.max(1)).frame(width: 20)
                    .underlineTextField()
                    .focused($focusedField, equals: .thirdCode)
                    .onChange(of: code3) {
                        focusedField = .fourthCode
                    }
                Spacer()
            }.frame(width: 75, height: 75)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
            
            HStack {
                Spacer()
                TextField("", text: $code4.max(1)).frame(width: 20)
                    .underlineTextField()
                    .focused($focusedField, equals: .fourthCode)
                Spacer()
            }.frame(width: 75, height: 75)
                .background(.gray.opacity(0.2))
                .cornerRadius(20)
        }.onAppear {
            focusedField = .firstCode
        }
    }
}

#Preview {
    Code(code1: "", code2: "", code3: "", code4: "")
}
