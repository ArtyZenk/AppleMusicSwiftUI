//
//  MainViewSettings.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct MainViewSettings: View {
    var body: some View {
        VStack {
            Text("Ищите свою музыку?")
                .bold()
                .font(.title2)
            Text("""
                Здесь появится купленная Вами в
                ITunes Store музыка
                """)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

struct MainViewSettings_Previews: PreviewProvider {
    static var previews: some View {
        MainViewSettings()
    }
}
