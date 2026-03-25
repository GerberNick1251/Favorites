//
//  CityModel.swift
//  Favorites
//
//  Created by Nick.Gerber.2 on 2026-03-25.
//

import Foundation

struct CityModel : Identifiable {
    let id: Int
    let cityName: String
    let cityImage: String
    var isFavorite: Bool = false
}
