//
//  RadioStationAlbum.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct RadioStations: Hashable {
    let name: String
    let description: String

    var coverImageStation: Image {
        Image(name)
    }
}

func getRadioStations() -> [RadioStations] {
    [
        RadioStations(name: "BounceFM", description: "Фанк радиостанция"),
        RadioStations(name: "CSRFM", description: "Инструментальная музыка"),
        RadioStations(name: "JulioG", description: "Классический рок"),
        RadioStations(name: "KDSTFM", description: "Техно радиостаниця"),
        RadioStations(name: "KJANFM", description: "Регги музыка"),
        RadioStations(name: "KROSEFM", description: "Классическая музыка"),
        RadioStations(name: "PlayBackFM", description: "HIP-HOP"),
        RadioStations(name: "RadioX", description: "Разговорный жанр")
    ]
}
