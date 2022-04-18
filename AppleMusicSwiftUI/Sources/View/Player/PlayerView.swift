//
//  PlayerView.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Image("player")
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .leading)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .shadow(radius: 5)
                    
                Text("Pantera - Walk")
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Button(
                    action: {}) {
                        Image(systemName: "play.fill")
                            .foregroundColor(.black)
                    }
                Button(
                    action: {}) {
                        Image(systemName: "forward.fill")
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                
            }
            .frame(height: 80)
            .background(Color(UIColor.systemGray6))
            .padding(.horizontal, 0)
            Divider()
                .padding(.top, -10)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

