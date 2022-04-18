//
//  SongsFilterModel.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

struct SongsFilter: Hashable {
    var icons: String
    var name: String
}

func getFilterData() -> [SongsFilter] {
    [
        SongsFilter(icons: "music.note.list", name: "Плейлисты"),
        SongsFilter(icons: "music.mic", name: "Артисты"),
        SongsFilter(icons: "square.stack", name: "Альбомы"),
        SongsFilter(icons: "music.note", name: "Песни"),
        SongsFilter(icons: "tv", name: "Телешоу и фильмы"),
        SongsFilter(icons: "music.note.tv", name: "Видеоклипы"),
        SongsFilter(icons: "guitars", name: "Жанры"),
        SongsFilter(icons: "person.2.square.stack", name: "Сборники"),
        SongsFilter(icons: "music.quarternote.3", name: "Авторы"),
        SongsFilter(icons: "arrow.down.circle", name: "Загружено"),
        SongsFilter(icons: "music.note.house", name: "Домашняя коллекция")
    ]
}
