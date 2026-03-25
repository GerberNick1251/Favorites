//
//  BookModel.swift
//  Favorites
//
//  Created by Nick.Gerber.2 on 2026-03-25.
//

import Foundation

struct BookModel : Identifiable {
    let id: Int
    let bookTitle: String
    let bookAuthor: String
    var isFavorite: Bool = false
}
