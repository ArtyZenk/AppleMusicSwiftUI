//
//  MainView.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct MainView: View {
    
    @State private var mainScreen = true
    
    var body: some View {
        NavigationView {
            contentView
                .navigationTitle("Медиатека")
                .navigationBarItems(
                    trailing:
                        Button(
                            action: { mainScreen.toggle() },
                            label: { Text(mainScreen ? "Править" : "Готово")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.red)})
                )
                .environment(\.editMode, .constant(mainScreen ? EditMode.inactive : EditMode.active))
        }
    }
    
    @ViewBuilder private var contentView: some View {
        if mainScreen {
            MainViewSettings()
        } else {
            SongsFilterView()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
