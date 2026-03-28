//
//  CitiesView.swift
//  Favorites
//
//  Created by Nick.Gerber.2 on 2026-03-27.
//

import SwiftUI

struct CitiesView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    var viewType : String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                if viewType == "Home" {
                    ForEach(favorites.filteredCities(searchText: searchText)) { city in
                        CityCardView(city: city)
                    }
                }
                else {
                    ForEach(favorites.filteredCitiesFav(searchText: searchText)){ city in
                        CityCardView(city: city)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    CitiesView(searchText: .constant(""), viewType: "Home")
        .environmentObject(FavoritesViewModel())
}
