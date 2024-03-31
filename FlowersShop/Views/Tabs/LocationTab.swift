//
//  LocationTab.swift
//  FlowersShop
//
//  Created by Yael Javier Zamora Moreno on 30/03/24.
//

import SwiftUI
import MapKit

struct LocationTab: View {
    let position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 19.557572, longitude: -99.245719),
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        )
    )
    
    @State private var buscar = ""
    
    var body: some View {
        ZStack {
            Map(initialPosition: position)
            
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        TextField("Buscar", text: $buscar)
                    }.frame(width: 250).padding().background().cornerRadius(10)
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "switch.2")
                    }.padding()
                        .background(.purple)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }.padding(.top, 20)
                
                Spacer()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<10) { _ in
                            LocationCard()
                        }
                    }.padding(.leading)
                }
                
                VStack { }.frame(height: 10)
            }
        }
    }
}

#Preview {
    LocationTab()
}
