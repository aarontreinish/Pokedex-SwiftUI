//
//  Pokemon.swift
//  Pokedex
//
//  Created by Aaron Treinish on 3/30/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation

// MARK: - Pokemon
struct Pokemon: Codable, Identifiable {
    let id = UUID()
    let count: Int?
    let next, previous: String?
    let results: [Result]?
}

// MARK: - Result
struct Result: Codable, Identifiable {
    let id = UUID()
    let name: String?
    let url: String?
}
