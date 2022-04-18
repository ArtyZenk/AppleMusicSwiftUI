//
//  LibraryView.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct LibraryView: View {
    var body: some View {
        ZStack {
            TabView {
                MainView()
                    .tabItem {
                        Image(systemName: "music.note.house")
                        Text("Медиатека")
                    }
                RadioView()
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            PlayerView()
                .padding(.bottom, 40)
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

