//
//  FavoritesView.swift
//  Favorites
//
//  Created by Nick.Gerber.2 on 2026-03-25.
//

import SwiftUI

enum FavoriteCategory : String, CaseIterable {
    case cities = "Cities"
    case hobbies = "Hobbies"
    case books = "Books"
}

struct FavoritesView: View {
    @State private var selectedCategory: FavoriteCategory = .cities
    @State private var searchText: String = ""
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Categories", selection: $selectedCategory) {
                    ForEach(FavoriteCategory.allCases, id: \.self) { category in
                        Text(category.rawValue).tag(category)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                selectedContentView()
            }
            .navigationTitle("Browse")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always),prompt: "Search \(selectedCategory.rawValue)")
        }
    }
    
    @ViewBuilder
    private func selectedContentView() -> some View {
        if selectedCategory == .cities {
            CitiesView(searchText: $searchText, viewType: "Fav")
        }
        else if selectedCategory == .hobbies {
            HobbiesView(searchText: $searchText, viewType: "Fav")
        }
        else if selectedCategory == .books {
            BooksView(searchText: $searchText, viewType: "Fav")
        }
    }
}

#Preview {
    FavoritesView()
        .environmentObject(FavoritesViewModel())
}
