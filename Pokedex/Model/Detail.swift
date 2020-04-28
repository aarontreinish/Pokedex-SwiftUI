//
//  Detail.swift
//  Pokedex
//
//  Created by Aaron Treinish on 3/30/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation

// MARK: - Details
struct Details: Codable, Identifiable {
    let id: Int?
    let abilities: [Ability]?
    let baseExperience: Int?
    let forms: [Species]?
    let gameIndices: [GameIndex]?
    let height: Int?
    //let heldItems: [JSONAny]?
    let isDefault: Bool?
    let locationAreaEncounters: String?
    let moves: [Move]?
    let name: String?
    let order: Int?
    let species: Species?
    let sprites: Sprites?
    let stats: [Stat]?
    let types: [TypeElement]?
    let weight: Int?
}

// MARK: - Ability
struct Ability: Codable {
    let ability: Species?
    let isHidden: Bool?
    let slot: Int?

}

// MARK: - Species
struct Species: Codable {
    let name: String?
    let url: String?
}

// MARK: - GameIndex
struct GameIndex: Codable {
    let gameIndex: Int?
    let version: Species?

}

// MARK: - Move
struct Move: Codable {
    let move: Species?
    let versionGroupDetails: [VersionGroupDetail]?

}

// MARK: - VersionGroupDetail
struct VersionGroupDetail: Codable {
    let levelLearnedAt: Int?
    let moveLearnMethod, versionGroup: Species?

}

// MARK: - Sprites
struct Sprites: Codable {
    let backDefault: String?
    //let backFemale: JSONNull?
    let backShiny: String?
    //let backShinyFemale: JSONNull?
    let frontDefault: String?
    //let frontFemale: JSONNull?
    let frontShiny: String?
    //let frontShinyFemale: JSONNull?

}

// MARK: - Stat
struct Stat: Codable {
    let baseStat, effort: Int?
    let stat: Species?

}

// MARK: - TypeElement
struct TypeElement: Codable {
    let slot: Int?
    let type: Species?
}
