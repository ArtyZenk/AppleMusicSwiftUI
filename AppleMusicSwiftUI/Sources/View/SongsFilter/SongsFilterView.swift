//
//  SongsFilterView.swift
//  AppleMusicSwiftUI
//
//  Created by Artyom Guzenko on 18.04.2022.
//

import SwiftUI

struct SongsFilterView: View {
    @State private var filterLists = getFilterData()
    @State private var selected: String?
    
    var body: some View {
        List(selection: $selected) {
            ForEach(filterLists, id: \.self) { filterList in
                HStack {
                    Image(systemName: filterList.icons)
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.red)
                        .frame(width: 25, height: 25, alignment: .leading)
                        .padding(.all, 10)
                    
                    Text(filterList.name)
                        .font(.title3)
                }
            }
            .onMove { (indexSet, index) in
                self.filterLists.move(fromOffsets: indexSet, toOffset: index)
            }
            .listStyle(InsetListStyle())
        }
    }
    
    struct SongsFilterView_Previews: PreviewProvider {
        static var previews: some View {
            SongsFilterView()
        }
    }
}
