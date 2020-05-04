//
//  Type.swift
//  Pokedex
//
//  Created by Aaron Treinish on 5/4/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation

struct Types: Codable {
    let id: Int?
    let name: String?
    let damage_relations: Damage_relations?
    let move_damage_class: Move_damage_class?
    
}

struct Damage_relations: Codable {
    let no_damage_to: [No_damage_to]?
    let half_damage_to: [Half_damage_to]?
    let double_damage_to: [Double_damage_to]?
    let no_damage_from: [No_damage_from]?
    let half_damage_from: [Half_damage_from]?
    let double_damage_from: [Double_damage_from]?

}

struct Half_damage_from: Codable {
    let name: String?
    let url: String?

}

struct Half_damage_to: Codable {
    let name: String?
    let url: String?

}

struct No_damage_from: Codable {
    let name: String?
    let url: String?

}

struct No_damage_to: Codable {
    let name: String?
    let url: String?

}

struct Double_damage_from: Codable {
    let name: String?
    let url: String?

}

struct Double_damage_to: Codable {
    let name: String?
    let url: String?

}

struct Move_damage_class: Codable {
    let name: String?
    let url: String?

}

