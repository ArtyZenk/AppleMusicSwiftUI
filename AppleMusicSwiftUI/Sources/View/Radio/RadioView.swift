//
//  RadioView.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Divider()
                    Text("Rock")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.secondary)
                        .padding(.bottom, -10)
                    Text("Pantera")
                        .font(.title)
                        .bold()
                    HorizontalAlbumView()
                        .padding(.top, -20)
                    Divider()
                    
                    Text("Станции")
                        .bold()
                        .font(.title)
                    VerticalAlbumView()
                        .padding(.leading, -15)
                        .padding(.bottom, 75)
                }
            }
            .navigationTitle("Радио")
            .padding(.leading, 20)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
