//
//  Movie.swift
//  MVVM_SwiftUI
//
//  Created by mac on 05/10/2023.
//

import SwiftUI

struct Movie: Codable, Identifiable {
    let id: String
    let name: String
    let director: String
    let thumbnail: String
    let desc: String
    let year: String
}
