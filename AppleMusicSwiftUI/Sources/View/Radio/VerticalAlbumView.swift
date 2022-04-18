//
//  VerticalAlbumView.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct VerticalAlbumView: View {
    private var radioStationsList = getRadioStations()
    
    let columns = [
        GridItem(.adaptive(minimum: 380, maximum: 450))
    ]
                 
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(radioStationsList, id: \.self) { radioStation in
                    HStack {
                        radioStation.coverImageStation
                            .resizable()
                            .frame(width: 70, height: 70, alignment: .leading)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .shadow(radius: 5)
                        
                        VStack(alignment: .leading) {
                            Text(radioStation.name)
                                .font(.title2)
                                .bold()
                            Text(radioStation.description)
                                .foregroundColor(.secondary)
                        }

                        Spacer()
                    }
                    .frame(height: 80)
                    .padding(.horizontal, 0)
                    
                    Divider()
                }
            }
        }
    }
}

struct VerticalAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalAlbumView()
    }
}
