//
//  HobbyModel.swift
//  Favorites
//
//  Created by Nick.Gerber.2 on 2026-03-25.
//

import Foundation

struct HobbyModel : Identifiable {
    let id: Int
    let hobbyName: String
    let hobbyIcon: String
    var isFavorite: Bool = false
}
