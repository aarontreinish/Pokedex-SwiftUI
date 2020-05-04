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
    let name: String?
    let baseExperience, height: Int?
    let isDefault: Bool?
    let order, weight: Int?
    let abilities: [Ability]?
    let forms: [Species]?
    let gameIndices: [GameIndex]?
    let heldItems: [HeldItem]?
    let locationAreaEncounters: String?
    let moves: [Move]?
    let species: Species?
    let sprites: Sprites?
    let stats: [Stat]?
    let types: [TypeElement]?

    enum CodingKeys: String, CodingKey {
        case id, name
        case baseExperience = "base_experience"
        case height
        case isDefault = "is_default"
        case order, weight, abilities, forms
        case gameIndices = "game_indices"
        case heldItems = "held_items"
        case locationAreaEncounters = "location_area_encounters"
        case moves, species, sprites, stats, types
    }
}

// MARK: - Ability
struct Ability: Codable {
    let isHidden: Bool?
    let slot: Int?
    let ability: DetailsSpecies?

    enum CodingKeys: String, CodingKey {
        case isHidden = "is_hidden"
        case slot, ability
    }
}

// MARK: - Species
struct DetailsSpecies: Codable {
    let name: String?
    let url: String?
}

// MARK: - GameIndex
struct GameIndex: Codable {
    let gameIndex: Int?
    let version: Species?

    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version
    }
}

// MARK: - HeldItem
struct HeldItem: Codable {
    let item: Species?
    let versionDetails: [HeldItemVersionDetail]?

    enum CodingKeys: String, CodingKey {
        case item
        case versionDetails = "version_details"
    }
}

// MARK: - HeldItemVersionDetail
struct HeldItemVersionDetail: Codable {
    let rarity: Int?
    let version: Species?
}

// MARK: - LocationAreaEncounter
struct LocationAreaEncounter: Codable {
    let locationArea: Species?
    let versionDetails: [LocationAreaEncounterVersionDetail]?

    enum CodingKeys: String, CodingKey {
        case locationArea = "location_area"
        case versionDetails = "version_details"
    }
}

// MARK: - LocationAreaEncounterVersionDetail
struct LocationAreaEncounterVersionDetail: Codable {
    let maxChance: Int?
    let encounterDetails: [EncounterDetail]?
    let version: Species?

    enum CodingKeys: String, CodingKey {
        case maxChance = "max_chance"
        case encounterDetails = "encounter_details"
        case version
    }
}

// MARK: - EncounterDetail
struct EncounterDetail: Codable {
    let minLevel, maxLevel: Int?
    let conditionValues: [Species]?
    let chance: Int?
    let method: Species?

    enum CodingKeys: String, CodingKey {
        case minLevel = "min_level"
        case maxLevel = "max_level"
        case conditionValues = "condition_values"
        case chance, method
    }
}

// MARK: - Move
struct Move: Codable {
    let move: Species?
    let versionGroupDetails: [VersionGroupDetail]?

    enum CodingKeys: String, CodingKey {
        case move
        case versionGroupDetails = "version_group_details"
    }
}

// MARK: - VersionGroupDetail
struct VersionGroupDetail: Codable {
    let levelLearnedAt: Int?
    let versionGroup, moveLearnMethod: Species?

    enum CodingKeys: String, CodingKey {
        case levelLearnedAt = "level_learned_at"
        case versionGroup = "version_group"
        case moveLearnMethod = "move_learn_method"
    }
}

// MARK: - Sprites
struct Sprites: Codable {
    let backFemale, backShinyFemale, backDefault, frontFemale: String?
    let frontShinyFemale, backShiny, frontDefault, frontShiny: String?

    enum CodingKeys: String, CodingKey {
        case backFemale = "back_female"
        case backShinyFemale = "back_shiny_female"
        case backDefault = "back_default"
        case frontFemale = "front_female"
        case frontShinyFemale = "front_shiny_female"
        case backShiny = "back_shiny"
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
    }
}

// MARK: - Stat
struct Stat: Codable {
    let baseStat, effort: Int?
    let stat: Species?

    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort, stat
    }
}

// MARK: - TypeElement
struct TypeElement: Codable {
    let slot: Int?
    let type: Species?
}
