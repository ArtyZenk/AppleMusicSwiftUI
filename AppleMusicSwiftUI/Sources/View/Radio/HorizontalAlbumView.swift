//
//  HorizontalAlbumView.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct HorizontalAlbumView: View {
    private var albumsList = getAlbums()
    private let rows = [
        GridItem(.fixed(350))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(albumsList, id: \.self ) { album in
                    VStack(alignment: .leading) {
                        Text(album.year)
                            .font(.title2)
                            .foregroundColor(.secondary)
                            
                        Text(album.coverName)
                            .bold()
                            .font(.title)
                            .foregroundColor(.secondary)
                        album.coverImage
                            .resizable()
                            .cornerRadius(15)
                            .frame(width: 300, height: 230, alignment: .leading)
                            .shadow(radius: 10)
                    }
                }
            }
        }
    }
}

struct HorizontalAlbumView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalAlbumView()
    }
}
