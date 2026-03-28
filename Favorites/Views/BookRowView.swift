//
//  BookRowView.swift
//  Favorites
//
//  Created by Nick.Gerber.2 on 2026-03-28.
//

import SwiftUI

struct BookRowView: View {
    let book: BookModel
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    var body: some View {
        HStack {
            Text(book.bookTitle)
                .font(.title2)
            Text(book.bookAuthor)
                .font(.body)
            
            Spacer()
            
            Button(action: {
                favorites.toggleFavoriteBook(book: book)
            }) {
                Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(book.isFavorite ? .red : .gray)
            }
        }
        .padding(.vertical, 4)
    }
}
