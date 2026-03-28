//
//  BooksView.swift
//  Favorites
//
//  Created by Nick.Gerber.2 on 2026-03-28.
//

import SwiftUI

struct BooksView: View {
    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredBooks(searchText: searchText)) {book in
                    BookRowView(book: book)
                }
            }
            .padding()
        }
    }
}

