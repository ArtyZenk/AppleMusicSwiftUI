//
//  AlbumModel.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct Albums: Hashable {
    let year: String
    var coverName: String
    
    var coverImage: Image {
        Image(coverName)
    }
}

func getAlbums() -> [Albums] {
    [
        Albums(year: "1984", coverName: "Project in the Jungle"),
        Albums(year: "1990", coverName: "Cowboys From Hell"),
        Albums(year: "1992", coverName: "Vulgar Display of Power")
    ]
}
