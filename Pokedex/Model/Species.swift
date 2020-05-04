//
//  Species.swift
//  Pokedex
//
//  Created by Aaron Treinish on 4/29/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation

struct Species: Codable, Identifiable {
    let id: Int?
    let name: String?
    let order: Int?
    let gender_rate: Int?
    let capture_rate: Int?
    let base_happiness: Int?
    let is_baby: Bool?
    let hatch_counter: Int?
    let has_gender_differences: Bool?
    let forms_switchable: Bool?
    let pokedex_numbers: [Pokedex_numbers]?
    let shape: Shape?
    let habitat: Habitat?
    let flavor_text_entries: [Flavor_text_entries]?
    let genera: [Genera]?

}

struct Flavor_text_entries: Codable {
    let flavor_text: String?
    let language: Language?
    //let version: Version?

}

struct Form_descriptions: Codable {
    let description: String?
    let language: Language?

}

struct Language: Codable {
    let name: String?
    let url: String?

}

struct Shape: Codable {
    let name: String?
    let url: String?
    
}

struct Genera: Codable {
    let genus: String?
    let language: Language?

}

struct Pokedex_numbers: Codable {
    let entry_number: Int?
    let pokedex: PokedexSpecies?

}

struct PokedexSpecies: Codable {
    let name: String?
    let url: String?

}

struct Habitat: Codable {
    let name: String?
    let url: String?

}
