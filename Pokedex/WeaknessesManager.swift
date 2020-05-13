//
//  WeaknessesManager.swift
//  Pokedex
//
//  Created by Aaron Treinish on 5/6/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation

struct CalculateTypes {
    let type: String
    let effect: String
}

class WeaknessesManager: ObservableObject {
    
    let normalWeaknessesFirst = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0]
    let fireWeaknessesFirst = [1.0, 0.5, 2.0, 1.0, 0.5, 0.5, 1.0, 1.0, 2.0]
    let waterWeaknessesFirst = [1.0, 0.5, 0.5, 2.0, 2.0, 0.5, 1.0, 1.0, 1.0]
    let electricWeaknessesFirst = [1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 2.0]
    let grassWeaknessesFirst = [1.0, 2.0, 0.5, 0.5, 0.5, 2.0, 1.0, 2.0, 0.5]
    let iceWeaknessesFirst = [1.0, 2.0, 1.0, 1.0, 1.0, 0.5, 2.0, 1.0, 1.0]
    let fightingWeaknessesFirst = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    let poisonWeaknessesFirst = [1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 0.5, 0.5, 2.0]
    let groundWeaknessesFirst = [1.0, 1.0, 2.0, 0, 2.0, 2.0, 1.0, 0.5, 1.0]
    let flyingWeaknessesFirst = [1.0, 1.0, 1.0, 2.0, 0.5, 2.0, 0.5, 1.0, 0]
    let psychicWeaknessesFirst = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0, 1.0]
    let bugWeaknessesFirst = [1.0, 2.0, 1.0, 1.0, 0.5, 1.0, 0.5, 1.0, 0.5]
    let rockWeaknessesFirst = [0.5, 0.5, 2.0, 1.0, 2.0, 1.0, 2.0, 0.5, 2.0]
    let ghostWeaknessesFirst = [0, 1.0, 1.0, 1.0, 1.0, 1.0, 0, 0.5, 1.0]
    let dragonWeaknessesFirst = [1.0, 0.5, 0.5, 0.5, 0.5, 2.0, 1.0, 1.0, 1.0]
    let darkWeaknessesFirst = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0]
    let steelWeaknessesFirst = [0.5, 2.0, 1.0, 1.0, 0.5, 0.5, 2.0, 0, 2.0]
    let fairyWeaknessesFirst = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 2.0, 1.0]
    
    let normalWeaknessesSecond = [1.0, 1.0, 1.0, 1.0, 0, 1.0, 1.0, 1.0, 1.0]
    let fireWeaknessesSecond = [1.0, 1.0, 0.5, 2.0, 1.0, 1.0, 1.0, 0.5, 1.0]
    let waterWeaknessesSecond = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0]
    let electricWeaknessesSecond = [0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 1.0]
    let grassWeaknessesSecond = [2.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    let iceWeaknessesSecond = [1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 2.0, 1.0]
    let fightingWeaknessesSecond = [2.0, 2.0, 0.5, 0.5, 1.0, 1.0, 0.5, 1.0, 2.0]
    let poisonWeaknessesSecond = [1.0, 2.0, 0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 0.5]
    let groundWeaknessesSecond = [1.0, 1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0]
    let flyingWeaknessesSecond = [1.0, 1.0, 0.5, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    let psychicWeaknessesSecond = [1.0, 0.5, 2.0, 1.0, 2.0, 1.0, 2.0, 1.0, 1.0]
    let bugWeaknessesSecond = [2.0, 1.0, 1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    let rockWeaknessesSecond = [0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0]
    let ghostWeaknessesSecond = [1.0, 1.0, 0.5, 1.0, 2.0, 1.0, 2.0, 1.0, 1.0]
    let dragonWeaknessesSecond = [1.0, 1.0, 1.0, 1.0, 1.0, 2.0, 1.0, 1.0, 2.0]
    let darkWeaknessesSecond = [1.0, 0, 2.0, 1.0, 0.5, 1.0, 0.5, 1.0, 2.0]
    let steelWeaknessesSecond = [0.5, 0.5, 0.5, 0.5, 1.0, 0.5, 1.0, 0.5, 0.5]
    let fairyWeaknessesSecond = [1.0, 1.0, 0.5, 1.0, 1.0, 0, 0.5, 2.0, 1.0]

    func getWeaknessesForSingleType(type1: String) -> [String] {
        
        var weaknesses: [String] = []
        
        if type1 == "normal" {
            weaknesses = ["fighting"]
            return weaknesses
        } else if type1 == "fire" {
            weaknesses = ["ground", "rock", "water"]
            return weaknesses
        } else if type1 == "water" {
            weaknesses = ["electric", "grass"]
            return weaknesses
        } else if type1 == "electric" {
            weaknesses = ["ground"]
            return weaknesses
        } else if type1 == "grass" {
            weaknesses = ["bug", "fire", "flying", "ice", "poison"]
            return weaknesses
        } else if type1 == "ice" {
            weaknesses = ["fighting", "fire", "rock", "steel"]
            return weaknesses
        } else if type1 == "fighting" {
            weaknesses = ["fairy", "flying", "psychic"]
            return weaknesses
        } else if type1 == "poison" {
            weaknesses = ["ground", "psychic"]
            return weaknesses
        } else if type1 == "ground" {
            weaknesses = ["grass", "ice", "water"]
            return weaknesses
        } else if type1 == "flying" {
            weaknesses = ["electric", "ice", "rock"]
            return weaknesses
        } else if type1 == "psychic" {
            weaknesses = ["bug", "dark", "ghost"]
            return weaknesses
        } else if type1 == "bug" {
            weaknesses = ["fire", "flying", "rock"]
            return weaknesses
        } else if type1 == "rock" {
            weaknesses = ["fighting", "grass", "ground", "steel", "water"]
            return weaknesses
        } else if type1 == "ghost" {
            weaknesses = ["dark", "ghost"]
            return weaknesses
        } else if type1 == "dragon" {
            weaknesses = ["dragon", "fairy", "ice"]
            return weaknesses
        } else if type1 == "dark" {
            weaknesses = ["bug", "fairy", "fighting"]
            return weaknesses
        } else if type1 == "steel" {
            weaknesses = ["fighting", "fire", "ground"]
            return weaknesses
        } else if type1 == "fairy" {
            weaknesses = ["poison", "steel"]
            return weaknesses
        }
        return weaknesses
    }
    
    func getWeaknessesForDualTypes(type1: String, type2: String) -> [String] {
        
        var weaknesses: [String] = []
        
        // MARK: Normal
        
        if type1 == "normal" && type2 == "fire" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "normal" && type2 == "water" {
            weaknesses = ["electric", "grass", "fighting"]
            return weaknesses
        } else if type1 == "normal" && type2 == "electric" {
            weaknesses = ["fighting", "ground"]
            return weaknesses
        } else if type1 == "normal" && type2 == "grass" {
            weaknesses = ["fire", "ice", "fighting", "poison", "flying", "bug"]
            return weaknesses
        } else if type1 == "normal" && type2 == "ice" {
            weaknesses = ["fire", "fighting", "rock", "steel"]
            return weaknesses
        } else if type1 == "normal" && type2 == "fighting" {
            weaknesses = ["fighting", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "normal" && type2 == "poison" {
            weaknesses = ["ground", "psychic"]
            return weaknesses
        } else if type1 == "normal" && type2 == "ground" {
            weaknesses = ["water", "grass", "ice", "fighting"]
            return weaknesses
        } else if type1 == "normal" && type2 == "flying" {
            weaknesses = ["electric", "ice", "rock"]
            return weaknesses
        } else if type1 == "normal" && type2 == "psychic" {
            weaknesses = ["bug", "dark"]
            return weaknesses
        } else if type1 == "normal" && type2 == "bug" {
            weaknesses = ["fire", "flying", "rock"]
            return weaknesses
        } else if type1 == "normal" && type2 == "rock" {
            weaknesses = ["water", "fighting", "grass", "ground", "steel"]
            return weaknesses
        } else if type1 == "normal" && type2 == "ghost" {
            weaknesses = ["dark"]
            return weaknesses
        } else if type1 == "normal" && type2 == "dragon" {
            weaknesses = ["ice", "fighting", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "normal" && type2 == "dark" {
            weaknesses = ["fighting", "bug", "fairy"]
            return weaknesses
        } else if type1 == "normal" && type2 == "steel" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "normal" && type2 == "fairy" {
            weaknesses = ["poison", "steel"]
            return weaknesses
        }
        
        // MARK: Fire
        
        if type1 == "fire" && type2 == "normal" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "water" {
            weaknesses = ["electric", "ground", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "electric" {
            weaknesses = ["water", "ground", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "grass" {
            weaknesses = ["poison", "flying", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "ice" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "fighting" {
            weaknesses = ["water", "ground", "flying", "psychic"]
            return weaknesses
        } else if type1 == "fire" && type2 == "poison" {
            weaknesses = ["water", "ground", "psychic", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "ground" {
            weaknesses = ["water", "ground"]
            return weaknesses
        } else if type1 == "fire" && type2 == "flying" {
            weaknesses = ["water", "electric", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "psychic" {
            weaknesses = ["water", "ground", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "fire" && type2 == "bug" {
            weaknesses = ["water", "flying", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "rock" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "ghost" {
            weaknesses = ["water", "ground", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "fire" && type2 == "dragon" {
            weaknesses = ["ground", "rock", "dragon"]
            return weaknesses
        } else if type1 == "fire" && type2 == "dark" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "fire" && type2 == "steel" {
            weaknesses = ["water", "fighting", "ground"]
            return weaknesses
        } else if type1 == "fire" && type2 == "fairy" {
            weaknesses = ["water", "poison", "ground", "rock"]
            return weaknesses
        }
        
        // MARK: Water
        
        if type1 == "water" && type2 == "normal" {
            weaknesses = ["electric", "grass", "fighting"]
            return weaknesses
        } else if type1 == "water" && type2 == "fire" {
            weaknesses = ["electric", "ground", "rock"]
            return weaknesses
        } else if type1 == "water" && type2 == "electric" {
            weaknesses = ["grass", "ground"]
            return weaknesses
        } else if type1 == "water" && type2 == "grass" {
            weaknesses = ["poison", "flying", "bug"]
            return weaknesses
        } else if type1 == "water" && type2 == "ice" {
            weaknesses = ["electric", "grass", "fighting", "rock"]
            return weaknesses
        } else if type1 == "water" && type2 == "fighting" {
            weaknesses = ["electric", "ground", "flying", "psychic"]
            return weaknesses
        } else if type1 == "water" && type2 == "poison" {
            weaknesses = ["electric", "ground", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "water" && type2 == "ground" {
            weaknesses = ["grass"]
            return weaknesses
        } else if type1 == "water" && type2 == "flying" {
            weaknesses = ["electric", "rock"]
            return weaknesses
        } else if type1 == "water" && type2 == "psychic" {
            weaknesses = ["electric", "grass", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "water" && type2 == "bug" {
            weaknesses = ["electric", "flying", "rock"]
            return weaknesses
        } else if type1 == "water" && type2 == "rock" {
            weaknesses = ["electric", "grass", "fighting", "ground"]
            return weaknesses
        } else if type1 == "water" && type2 == "ghost" {
            weaknesses = ["electric", "grass", "ghost", "dark"]
            return weaknesses
        } else if type1 == "water" && type2 == "dragon" {
            weaknesses = ["dragon", "fairy"]
            return weaknesses
        } else if type1 == "water" && type2 == "dark" {
            weaknesses = ["electric", "grass", "fighting", "bug", "fairy"]
            return weaknesses
        } else if type1 == "water" && type2 == "steel" {
            weaknesses = ["electric", "fighting", "ground"]
            return weaknesses
        } else if type1 == "water" && type2 == "fairy" {
            weaknesses = ["electric", "grass", "poison"]
            return weaknesses
        }
        
        // MARK: Electric
        
        if type1 == "electric" && type2 == "normal" {
            weaknesses = ["ground", "fighting"]
            return weaknesses
        } else if type1 == "electric" && type2 == "fire" {
            weaknesses = ["ground", "water", "rock"]
            return weaknesses
        } else if type1 == "electric" && type2 == "water" {
            weaknesses = ["grass", "ground"]
            return weaknesses
        } else if type1 == "electric" && type2 == "grass" {
            weaknesses = ["fire", "ice", "poison", "bug"]
            return weaknesses
        } else if type1 == "electric" && type2 == "ice" {
            weaknesses = ["ground", "fire", "fighting", "rock"]
            return weaknesses
        } else if type1 == "electric" && type2 == "fighting" {
            weaknesses = ["ground", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "electric" && type2 == "poison" {
            weaknesses = ["ground", "psychic"]
            return weaknesses
        } else if type1 == "electric" && type2 == "ground" {
            weaknesses = ["water", "grass", "ice", "ground"]
            return weaknesses
        } else if type1 == "electric" && type2 == "flying" {
            weaknesses = ["ice", "rock"]
            return weaknesses
        } else if type1 == "electric" && type2 == "psychic" {
            weaknesses = ["ground", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "electric" && type2 == "bug" {
            weaknesses = ["fire", "ghost"]
            return weaknesses
        } else if type1 == "electric" && type2 == "rock" {
            weaknesses = ["ground", "water", "grass", "fighting"]
            return weaknesses
        } else if type1 == "electric" && type2 == "ghost" {
            weaknesses = ["ground", "ghost", "dark"]
            return weaknesses
        } else if type1 == "electric" && type2 == "dragon" {
            weaknesses = ["ice", "ground", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "electric" && type2 == "dark" {
            weaknesses = ["ground", "fighting", "bug", "fairy"]
            return weaknesses
        } else if type1 == "electric" && type2 == "steel" {
            weaknesses = ["ground", "fighting", "fire"]
            return weaknesses
        } else if type1 == "electric" && type2 == "fairy" {
            weaknesses = ["ground", "poison"]
            return weaknesses
        }
        
        // MARK: Grass
        
        if type1 == "grass" && type2 == "normal" {
            weaknesses = ["fire", "ice", "fighting", "poison", "flying", "bug"]
            return weaknesses
        } else if type1 == "grass" && type2 == "fire" {
            weaknesses = ["poison", "flying", "rock"]
            return weaknesses
        } else if type1 == "grass" && type2 == "water" {
            weaknesses = ["poison", "flying", "rock"]
            return weaknesses
        } else if type1 == "grass" && type2 == "electric" {
            weaknesses = ["fire", "ice", "poison", "bug"]
            return weaknesses
        } else if type1 == "grass" && type2 == "ice" {
            weaknesses = ["fire", "fighting", "poison", "flying", "bug", "rock"]
            return weaknesses
        } else if type1 == "grass" && type2 == "fighting" {
            weaknesses = ["fire", "ice", "poison", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "grass" && type2 == "poison" {
            weaknesses = ["fire", "ice", "flying", "psychic"]
            return weaknesses
        } else if type1 == "grass" && type2 == "ground" {
            weaknesses = ["fire", "ice", "flying", "bug"]
            return weaknesses
        } else if type1 == "grass" && type2 == "flying" {
            weaknesses = ["fire", "ice", "poison", "flying", "rock"]
            return weaknesses
        } else if type1 == "grass" && type2 == "psychic" {
            weaknesses = ["fire", "ice", "poison", "flying", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "grass" && type2 == "bug" {
            weaknesses = ["fire", "ice", "poison", "flying", "bug", "rock"]
            return weaknesses
        } else if type1 == "grass" && type2 == "rock" {
            weaknesses = ["ice", "fighting", "bug", "steel"]
            return weaknesses
        } else if type1 == "grass" && type2 == "ghost" {
            weaknesses = ["fire", "ice", "flying", "ghost", "dark"]
            return weaknesses
        } else if type1 == "grass" && type2 == "dragon" {
            weaknesses = ["ice", "poison", "flying", "bug", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "grass" && type2 == "dark" {
            weaknesses = ["fire", "ice", "fighting", "poison", "flying", "bug", "fairy"]
            return weaknesses
        } else if type1 == "grass" && type2 == "steel" {
            weaknesses = ["fire", "fighting"]
            return weaknesses
        } else if type1 == "grass" && type2 == "fairy" {
            weaknesses = ["fire", "ice", "poison", "flying", "steel"]
            return weaknesses
        }
        
        // MARK: Ice
        
        if type1 == "ice" && type2 == "normal" {
            weaknesses = ["fire", "fighting", "rock", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "fire" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "ice" && type2 == "water" {
            weaknesses = ["electric", "grass", "fighting", "rock"]
            return weaknesses
        } else if type1 == "ice" && type2 == "electric" {
            weaknesses = ["fire", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "ice" && type2 == "grass" {
            weaknesses = ["fire", "fighting", "poison", "flying", "bug", "rock", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "fighting" {
            weaknesses = ["fire", "fighting", "flying", "psychic", "steel", "fairy"]
            return weaknesses
        } else if type1 == "ice" && type2 == "poison" {
            weaknesses = ["fire", "ground", "psychic", "rock", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "ground" {
            weaknesses = ["fire", "water", "grass", "fighting", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "flying" {
            weaknesses = ["fire", "electric", "rock", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "psychic" {
            weaknesses = ["fire", "bug", "rock", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "bug" {
            weaknesses = ["fire", "flying", "rock", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "rock" {
            weaknesses = ["water", "grass", "fighting", "ground", "rock", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "ghost" {
            weaknesses = ["fire", "rock", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "ice" && type2 == "dragon" {
            weaknesses = ["fighting", "rock", "dragon", "steel", "fairy"]
            return weaknesses
        } else if type1 == "ice" && type2 == "dark" {
            weaknesses = ["fire", "fighting", "poison", "bug", "steel", "fairy"]
            return weaknesses
        } else if type1 == "ice" && type2 == "steel" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "ice" && type2 == "fairy" {
            weaknesses = ["fire", "poison", "rock", "steel"]
            return weaknesses
        }
        
        // MARK: Fighting
        
        if type1 == "fighting" && type2 == "normal" {
            weaknesses = ["fighting", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "fire" {
            weaknesses = ["water", "ground", "flying", "psychic"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "water" {
            weaknesses = ["electric", "grass", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "electric" {
            weaknesses = ["ground", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "grass" {
            weaknesses = ["fire", "ice", "poison", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "ice" {
            weaknesses = ["fire", "fighting", "flying", "psychic", "steel", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "poison" {
            weaknesses = ["ground", "flying", "psychic"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "ground" {
            weaknesses = ["water", "ice", "grass", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "flying" {
            weaknesses = ["electric", "ice", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "psychic" {
            weaknesses = ["flying", "ghost", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "bug" {
            weaknesses = ["fire", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "rock" {
            weaknesses = ["water", "grass", "fighting", "ground", "psychic", "steel", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "ghost" {
            weaknesses = ["flying", "psychic", "ghost", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "dragon" {
            weaknesses = ["ice", "flying", "psychic", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "dark" {
            weaknesses = ["fighting", "flying", "fairy"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "steel" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "fighting" && type2 == "fairy" {
            weaknesses = ["poison", "flying", "psychic", "steel", "fairy"]
            return weaknesses
        }
        
        // MARK: Poison
        
        if type1 == "poison" && type2 == "normal" {
            weaknesses = ["ground", "psychic"]
            return weaknesses
        } else if type1 == "poison" && type2 == "fire" {
            weaknesses = ["water", "ground", "psychic", "rock"]
            return weaknesses
        } else if type1 == "poison" && type2 == "water" {
            weaknesses = ["electric", "ground", "psychic"]
            return weaknesses
        } else if type1 == "poison" && type2 == "electric" {
            weaknesses = ["ground", "psychic"]
            return weaknesses
        } else if type1 == "poison" && type2 == "grass" {
            weaknesses = ["fire", "ice", "flying", "psychic"]
            return weaknesses
        } else if type1 == "poison" && type2 == "ice" {
            weaknesses = ["fire", "ground", "psychic", "rock"]
            return weaknesses
        } else if type1 == "poison" && type2 == "fighting" {
            weaknesses = ["ground", "flying", "psychic"]
            return weaknesses
        } else if type1 == "poison" && type2 == "ground" {
            weaknesses = ["water", "ice", "ground", "psychic"]
            return weaknesses
        } else if type1 == "poison" && type2 == "flying" {
            weaknesses = ["electric", "ice", "psychic", "rock"]
            return weaknesses
        } else if type1 == "poison" && type2 == "psychic" {
            weaknesses = ["ground", "ghost", "dark"]
            return weaknesses
        } else if type1 == "poison" && type2 == "bug" {
            weaknesses = ["fire", "flying", "psychic", "rock"]
            return weaknesses
        } else if type1 == "poison" && type2 == "rock" {
            weaknesses = ["water", "ground", "psychic", "steel"]
            return weaknesses
        } else if type1 == "poison" && type2 == "ghost" {
            weaknesses = ["ground", "psychic", "ghost", "dark"]
            return weaknesses
        } else if type1 == "poison" && type2 == "dragon" {
            weaknesses = ["ice", "ground", "psychic", "dragon"]
            return weaknesses
        } else if type1 == "poison" && type2 == "dark" {
            weaknesses = ["ground"]
            return weaknesses
        } else if type1 == "poison" && type2 == "steel" {
            weaknesses = ["fire", "ground"]
            return weaknesses
        } else if type1 == "poison" && type2 == "fairy" {
            weaknesses = ["ground", "psychic", "steel"]
            return weaknesses
        }
        
        // MARK: Ground
        
        if type1 == "ground" && type2 == "normal" {
            weaknesses = ["water", "grass", "ice", "fighting"]
            return weaknesses
        } else if type1 == "ground" && type2 == "fire" {
            weaknesses = ["water", "ground"]
            return weaknesses
        } else if type1 == "ground" && type2 == "water" {
            weaknesses = ["grass"]
            return weaknesses
        } else if type1 == "ground" && type2 == "electric" {
            weaknesses = ["water", "grass", "ice", "ground"]
            return weaknesses
        } else if type1 == "ground" && type2 == "grass" {
            weaknesses = ["fire", "ice", "flying", "bug"]
            return weaknesses
        } else if type1 == "ground" && type2 == "ice" {
            weaknesses = ["water", "grass", "ice", "fighting", "steel"]
            return weaknesses
        } else if type1 == "ground" && type2 == "fighting" {
            weaknesses = ["water", "grass", "ice", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "ground" && type2 == "poison" {
            weaknesses = ["water", "ice", "ground", "psychic"]
            return weaknesses
        } else if type1 == "ground" && type2 == "flying" {
            weaknesses = ["water", "ice"]
            return weaknesses
        } else if type1 == "ground" && type2 == "psychic" {
            weaknesses = ["water", "grass", "ice", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ground" && type2 == "bug" {
            weaknesses = ["fire", "water", "ice", "flying"]
            return weaknesses
        } else if type1 == "ground" && type2 == "rock" {
            weaknesses = ["water", "grass", "ice", "fighting", "ground", "steel"]
            return weaknesses
        } else if type1 == "ground" && type2 == "ghost" {
            weaknesses = ["water", "grass", "ice", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ground" && type2 == "dragon" {
            weaknesses = ["ice", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "ground" && type2 == "dark" {
            weaknesses = ["water", "grass", "ice", "fighting", "bug", "fairy"]
            return weaknesses
        } else if type1 == "ground" && type2 == "steel" {
            weaknesses = ["fire", "water", "fighting", "ground"]
            return weaknesses
        } else if type1 == "ground" && type2 == "fairy" {
            weaknesses = ["water", "grass", "ice", "steel"]
            return weaknesses
        }
        
        // MARK: Flying
        
        if type1 == "flying" && type2 == "normal" {
            weaknesses = ["electric", "ice", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "fire" {
            weaknesses = ["water", "electric", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "water" {
            weaknesses = ["electric", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "electric" {
            weaknesses = ["ice", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "grass" {
            weaknesses = ["fire", "ice", "poison", "flying", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "ice" {
            weaknesses = ["fire", "electric", "rock", "steel"]
            return weaknesses
        } else if type1 == "flying" && type2 == "fighting" {
            weaknesses = ["electric", "ice", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "flying" && type2 == "poison" {
            weaknesses = ["electric", "ice", "psychic", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "ground" {
            weaknesses = ["water", "ice"]
            return weaknesses
        } else if type1 == "flying" && type2 == "psychic" {
            weaknesses = ["electric", "ice", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "flying" && type2 == "bug" {
            weaknesses = ["fire", "electric", "ice", "flying", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "rock" {
            weaknesses = ["water", "electric", "ice", "rock"]
            return weaknesses
        } else if type1 == "flying" && type2 == "ghost" {
            weaknesses = ["electric", "ice", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "flying" && type2 == "dragon" {
            weaknesses = ["ice", "rock", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "flying" && type2 == "dark" {
            weaknesses = ["electric", "ice", "rock", "fairy"]
            return weaknesses
        } else if type1 == "flying" && type2 == "steel" {
            weaknesses = ["fire", "electric"]
            return weaknesses
        } else if type1 == "flying" && type2 == "fairy" {
            weaknesses = ["electric", "ice", "poison", "rock", "steel"]
            return weaknesses
        }
        
        // MARK: Psychic
        
        if type1 == "psychic" && type2 == "normal" {
            weaknesses = ["bug", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "fire" {
            weaknesses = ["water", "ground", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "water" {
            weaknesses = ["electric", "grass", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "electric" {
            weaknesses = ["ground", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "grass" {
            weaknesses = ["fire", "ice", "poison", "flying", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "ice" {
            weaknesses = ["fire", "bug", "rock", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "fighting" {
            weaknesses = ["flying", "ghost", "fairy"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "poison" {
            weaknesses = ["ground", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "ground" {
            weaknesses = ["water", "grass", "ice", "bug", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "flying" {
            weaknesses = ["electric", "ice", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "bug" {
            weaknesses = ["fire", "flying", "bug", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "rock" {
            weaknesses = ["water", "grass", "ground", "bug", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "ghost" {
            weaknesses = ["ghost", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "dragon" {
            weaknesses = ["ice", "bug", "ghost", "dragon", "dark", "fairy"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "dark" {
            weaknesses = ["bug", "fairy"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "steel" {
            weaknesses = ["fire", "ground", "bug", "dark"]
            return weaknesses
        } else if type1 == "psychic" && type2 == "fairy" {
            weaknesses = ["poison", "ghost", "steel"]
            return weaknesses
        }
        
        // MARK: Bug
        
        if type1 == "bug" && type2 == "normal" {
            weaknesses = ["fire", "flying", "rock"]
            return weaknesses
        } else if type1 == "bug" && type2 == "fire" {
            weaknesses = ["water", "flying", "rock"]
            return weaknesses
        } else if type1 == "bug" && type2 == "water" {
            weaknesses = ["electric", "flying", "rock"]
            return weaknesses
        } else if type1 == "bug" && type2 == "electric" {
            weaknesses = ["fire", "rock"]
            return weaknesses
        } else if type1 == "bug" && type2 == "grass" {
            weaknesses = ["fire", "ice", "poison", "flying", "bug", "rock"]
            return weaknesses
        } else if type1 == "bug" && type2 == "ice" {
            weaknesses = ["fire", "flying", "rock", "steel"]
            return weaknesses
        } else if type1 == "bug" && type2 == "fighting" {
            weaknesses = ["fire", "flying", "psychic", "fairy"]
            return weaknesses
        } else if type1 == "bug" && type2 == "poison" {
            weaknesses = ["fire", "flying", "psychic", "rock"]
            return weaknesses
        } else if type1 == "bug" && type2 == "ground" {
            weaknesses = ["fire", "water", "ice", "flying"]
            return weaknesses
        } else if type1 == "bug" && type2 == "flying" {
            weaknesses = ["fire", "electric", "ice", "flying", "rock"]
            return weaknesses
        } else if type1 == "bug" && type2 == "psychic" {
            weaknesses = ["fire", "flying", "bug", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "bug" && type2 == "rock" {
            weaknesses = ["water", "rock", "steel"]
            return weaknesses
        } else if type1 == "bug" && type2 == "ghost" {
            weaknesses = ["fire", "flying", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "bug" && type2 == "dragon" {
            weaknesses = ["ice", "flying", "rock", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "bug" && type2 == "dark" {
            weaknesses = ["fire", "flying", "bug", "rock", "fairy"]
            return weaknesses
        } else if type1 == "bug" && type2 == "steel" {
            weaknesses = ["fire"]
            return weaknesses
        } else if type1 == "bug" && type2 == "fairy" {
            weaknesses = ["fire", "poison", "flying", "rock", "steel"]
            return weaknesses
        }
        
        // MARK: Rock
        
        if type1 == "rock" && type2 == "normal" {
            weaknesses = ["water", "grass", "fighting", "ground", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "fire" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "rock" && type2 == "water" {
            weaknesses = ["electric", "grass", "fighting", "ground"]
            return weaknesses
        } else if type1 == "rock" && type2 == "electric" {
            weaknesses = ["water", "grass", "fighting", "ground"]
            return weaknesses
        } else if type1 == "rock" && type2 == "grass" {
            weaknesses = ["ice", "fighting", "bug", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "ice" {
            weaknesses = ["water", "grass", "fighting", "ground", "rock", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "fighting" {
            weaknesses = ["water", "grass", "fighting", "ground", "psychic", "steel", "fairy"]
            return weaknesses
        } else if type1 == "rock" && type2 == "poison" {
            weaknesses = ["water", "ground", "psychic", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "ground" {
            weaknesses = ["water", "grass", "ice", "fighting", "ground", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "flying" {
            weaknesses = ["water", "electric", "ice", "rock", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "psychic" {
            weaknesses = ["water", "grass", "ground", "bug", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "bug" {
            weaknesses = ["water", "rock", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "ghost" {
            weaknesses = ["water", "grass", "ground", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "rock" && type2 == "dragon" {
            weaknesses = ["ice", "fighting", "ground", "dragon", "steel", "fairy"]
            return weaknesses
        } else if type1 == "rock" && type2 == "dark" {
            weaknesses = ["water", "grass", "fighting", "ground", "bug", "steel", "fairy"]
            return weaknesses
        } else if type1 == "rock" && type2 == "steel" {
            weaknesses = ["water", "fighting", "ground"]
            return weaknesses
        } else if type1 == "rock" && type2 == "fairy" {
            weaknesses = ["water", "grass", "ground", "steel"]
            return weaknesses
        }
        
        // MARK: Ghost
        
        if type1 == "ghost" && type2 == "normal" {
            weaknesses = ["ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "fire" {
            weaknesses = ["dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "water" {
            weaknesses = ["electric", "grass", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "electric" {
            weaknesses = ["ground", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "grass" {
            weaknesses = ["fire", "ice", "flying", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "ice" {
            weaknesses = ["fire", "rock", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "fighting" {
            weaknesses = ["flying", "psychic", "ghost", "dark", "fairy"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "poison" {
            weaknesses = ["ground", "psychic", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "ground" {
            weaknesses = ["water", "grass", "ice", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "flying" {
            weaknesses = ["electric", "ice", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "psychic" {
            weaknesses = ["ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "bug" {
            weaknesses = ["fire", "flying", "rock", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "rock" {
            weaknesses = ["water", "grass", "ground", "ghost", "dark", "steel"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "dragon" {
            weaknesses = ["ice", "ghost", "dragon", "dark", "fairy"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "dark" {
            weaknesses = ["fairy"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "steel" {
            weaknesses = ["fire", "ground", "ghost", "dark"]
            return weaknesses
        } else if type1 == "ghost" && type2 == "fairy" {
            weaknesses = ["ghost", "steel"]
            return weaknesses
        }
        
        // MARK: Dragon
        
        if type1 == "dragon" && type2 == "normal" {
            weaknesses = ["ice", "fighting", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "fire" {
            weaknesses = ["ground", "rock", "dragon"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "water" {
            weaknesses = ["dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "electric" {
            weaknesses = ["ice", "ground", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "grass" {
            weaknesses = ["ice", "poison", "flying", "bug", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "ice" {
            weaknesses = ["fighting", "rock", "ice", "dragon", "steel", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "fighting" {
            weaknesses = ["flying", "psychic", "ghost", "dark", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "poison" {
            weaknesses = ["ice", "ground", "psychic", "dragon"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "ground" {
            weaknesses = ["ice", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "flying" {
            weaknesses = ["ice", "rock", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "psychic" {
            weaknesses = ["ice", "bug", "ghost", "dragon", "dark", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "bug" {
            weaknesses = ["ice", "flying", "rock", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "rock" {
            weaknesses = ["ice", "fighting", "ground", "dragon", "steel", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "ghost" {
            weaknesses = ["ice", "ghost", "dragon", "dark", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "dark" {
            weaknesses = ["ice", "fighting", "bug", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "steel" {
            weaknesses = ["fighting", "ground"]
            return weaknesses
        } else if type1 == "dragon" && type2 == "fairy" {
            weaknesses = ["ice", "poison", "steel", "fairy"]
            return weaknesses
        }
        
        // MARK: Dark
        
        if type1 == "dark" && type2 == "normal" {
            weaknesses = ["fighting", "bug", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "fire" {
            weaknesses = ["water", "fighting", "ground", "rock"]
            return weaknesses
        } else if type1 == "dark" && type2 == "water" {
            weaknesses = ["electric", "grass", "fighting", "bug", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "electric" {
            weaknesses = ["fighting", "ground", "bug", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "grass" {
            weaknesses = ["fire", "ice", "fighting", "poison", "flying", "bug", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "ice" {
            weaknesses = ["fire", "fighting", "bug", "rock", "steel", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "fighting" {
            weaknesses = ["fighting", "flying", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "poison" {
            weaknesses = ["ground"]
            return weaknesses
        } else if type1 == "dark" && type2 == "ground" {
            weaknesses = ["water", "grass", "ice", "fighting", "bug", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "flying" {
            weaknesses = ["electic", "ice", "rock", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "psychic" {
            weaknesses = ["bug", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "bug" {
            weaknesses = ["fire", "flying", "bug", "rock", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "rock" {
            weaknesses = ["water", "grass", "fighting", "ground", "bug", "steel", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "ghost" {
            weaknesses = ["fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "dragon" {
            weaknesses = ["ice", "fighting", "bug", "dragon", "fairy"]
            return weaknesses
        } else if type1 == "dark" && type2 == "steel" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "dark" && type2 == "fairy" {
            weaknesses = ["poison", "steel", "fairy"]
            return weaknesses
        }
        
        // MARK: Steel
        
        if type1 == "steel" && type2 == "normal" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "fire" {
            weaknesses = ["water", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "water" {
            weaknesses = ["electric", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "electric" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "grass" {
            weaknesses = ["fire", "fighting"]
            return weaknesses
        } else if type1 == "steel" && type2 == "ice" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "fighting" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "poison" {
            weaknesses = ["fire", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "ground" {
            weaknesses = ["fire", "water", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "flying" {
            weaknesses = ["fire", "electric"]
            return weaknesses
        } else if type1 == "steel" && type2 == "psychic" {
            weaknesses = ["fire", "ground", "ghost", "dark"]
            return weaknesses
        } else if type1 == "steel" && type2 == "bug" {
            weaknesses = ["fire"]
            return weaknesses
        } else if type1 == "steel" && type2 == "rock" {
            weaknesses = ["water", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "ghost" {
            weaknesses = ["fire", "ground", "ghost", "dark"]
            return weaknesses
        } else if type1 == "steel" && type2 == "dragon" {
            weaknesses = ["fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "dark" {
            weaknesses = ["fire", "fighting", "ground"]
            return weaknesses
        } else if type1 == "steel" && type2 == "fairy" {
            weaknesses = ["fire", "ground"]
            return weaknesses
        }
        
        // MARK: Fairy
        
        if type1 == "fairy" && type2 == "normal" {
            weaknesses = ["poison", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "fire" {
            weaknesses = ["poison", "ground", "rock"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "water" {
            weaknesses = ["electric", "grass", "poison"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "electric" {
            weaknesses = ["electric", "ground"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "grass" {
            weaknesses = ["fire", "ice", "poison", "flying", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "ice" {
            weaknesses = ["fire", "poison", "rock", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "fighting" {
            weaknesses = ["poison", "flying", "psychic", "steel", "fairy"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "poison" {
            weaknesses = ["ground", "psychic", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "ground" {
            weaknesses = ["fire", "grass", "ice", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "flying" {
            weaknesses = ["electric", "ice", "poison", "rock", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "psychic" {
            weaknesses = ["poison", "ghost", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "bug" {
            weaknesses = ["fire", "poison", "flying", "rock", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "rock" {
            weaknesses = ["water", "grass", "ground", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "ghost" {
            weaknesses = ["ghost", "steel"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "dragon" {
            weaknesses = ["ice", "poison", "steel", "fairy"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "dark" {
            weaknesses = ["poison", "steel", "fairy"]
            return weaknesses
        } else if type1 == "fairy" && type2 == "steel" {
            weaknesses = ["fire", "ground"]
            return weaknesses
        }
        
        return weaknesses
    }
    
    func calculateFirstTypeDefensesForSingleType(type1: String) -> [String] {
        
        var weaknesses: [String] = []
        
        if type1 == "normal" {
            weaknesses = normalWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "fire" {
            weaknesses = fireWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "water" {
            weaknesses = waterWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "electric" {
            weaknesses = electricWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "grass" {
            weaknesses = grassWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "ice" {
            weaknesses = iceWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" {
            weaknesses = fightingWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "poison" {
            weaknesses = poisonWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "ground" {
            weaknesses = groundWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "flying" {
            weaknesses = flyingWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" {
            weaknesses = psychicWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "bug" {
            weaknesses = bugWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "rock" {
            weaknesses = rockWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" {
            weaknesses = ghostWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" {
            weaknesses = dragonWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "dark" {
            weaknesses = darkWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "steel" {
            weaknesses = steelWeaknessesFirst.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" {
            weaknesses = fairyWeaknessesFirst.map { String($0) }
            return weaknesses
        }
        return weaknesses
    }
    
    func calculateSecondTypeDefensesForSingleType(type1: String) -> [String] {
        
        var weaknesses: [String] = []
        
        if type1 == "normal" {
            weaknesses = normalWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "fire" {
            weaknesses = fireWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "water" {
            weaknesses = waterWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "electric" {
            weaknesses = electricWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "grass" {
            weaknesses = grassWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "ice" {
            weaknesses = iceWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" {
            weaknesses = fightingWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "poison" {
            weaknesses = poisonWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "ground" {
            weaknesses = groundWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "flying" {
            weaknesses = flyingWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" {
            weaknesses = psychicWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "bug" {
            weaknesses = bugWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "rock" {
            weaknesses = rockWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" {
            weaknesses = ghostWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" {
            weaknesses = dragonWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "dark" {
            weaknesses = darkWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "steel" {
            weaknesses = steelWeaknessesSecond.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" {
            weaknesses = fairyWeaknessesSecond.map { String($0) }
            return weaknesses
        }
        return weaknesses
    }
    
    func calculateFirstTypeDefensesForDualType(type1: String, type2: String) -> [String] {
        
        var weaknesses: [String] = []
        
        // MARK: Normal
        
        if type1 == "normal" && type2 == "fire" {
            let z = zip(normalWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "water" {
            let z = zip(normalWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "electric" {
            let z = zip(normalWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "grass" {
            let z = zip(normalWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "ice" {
            let z = zip(normalWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "fighting" {
            let z = zip(normalWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "poison" {
            let z = zip(normalWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "ground" {
            let z = zip(normalWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "flying" {
            let z = zip(normalWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "psychic" {
            let z = zip(normalWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "bug" {
            let z = zip(normalWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "rock" {
            let z = zip(normalWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "ghost" {
            let z = zip(normalWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "dragon" {
            let z = zip(normalWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "dark" {
            let z = zip(normalWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "steel" {
            let z = zip(normalWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "fairy" {
            let z = zip(normalWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Fire
        
        if type1 == "fire" && type2 == "normal" {
            let z = zip(fireWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "water" {
            let z = zip(fireWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "electric" {
            let z = zip(fireWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "grass" {
            let z = zip(fireWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "ice" {
            let z = zip(fireWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "fighting" {
            let z = zip(fireWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "poison" {
            let z = zip(fireWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "ground" {
            let z = zip(fireWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "flying" {
            let z = zip(fireWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "psychic" {
            let z = zip(fireWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "bug" {
            let z = zip(fireWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "rock" {
            let z = zip(fireWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "ghost" {
            let z = zip(fireWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "dragon" {
            let z = zip(fireWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "dark" {
            let z = zip(fireWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "steel" {
            let z = zip(fireWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "fairy" {
            let z = zip(fireWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Water
        
        if type1 == "water" && type2 == "normal" {
            let z = zip(waterWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "fire" {
            let z = zip(waterWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "electric" {
            let z = zip(waterWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "grass" {
            let z = zip(waterWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "ice" {
            let z = zip(waterWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "fighting" {
            let z = zip(waterWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "poison" {
            let z = zip(waterWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "ground" {
            let z = zip(waterWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "flying" {
            let z = zip(waterWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "psychic" {
            let z = zip(waterWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "bug" {
            let z = zip(waterWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "rock" {
            let z = zip(waterWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "ghost" {
            let z = zip(waterWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "dragon" {
            let z = zip(waterWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "dark" {
            let z = zip(waterWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "steel" {
            let z = zip(waterWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "fairy" {
            let z = zip(waterWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Electric
        
        if type1 == "electric" && type2 == "normal" {
            let z = zip(electricWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "fire" {
            let z = zip(electricWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "water" {
            let z = zip(electricWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "grass" {
            let z = zip(electricWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "ice" {
            let z = zip(electricWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "fighting" {
            let z = zip(electricWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "poison" {
            let z = zip(electricWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "ground" {
            let z = zip(electricWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "flying" {
            let z = zip(electricWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "psychic" {
            let z = zip(electricWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "bug" {
            let z = zip(electricWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "rock" {
            let z = zip(electricWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "ghost" {
            let z = zip(electricWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "dragon" {
            let z = zip(electricWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "dark" {
            let z = zip(electricWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "steel" {
            let z = zip(electricWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "fairy" {
            let z = zip(electricWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Grass
        
        if type1 == "grass" && type2 == "normal" {
            let z = zip(grassWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "fire" {
            let z = zip(grassWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "water" {
            let z = zip(grassWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "electric" {
            let z = zip(grassWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "ice" {
            let z = zip(grassWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "fighting" {
            let z = zip(grassWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "poison" {
            let z = zip(grassWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "ground" {
            let z = zip(grassWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "flying" {
            let z = zip(grassWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "psychic" {
            let z = zip(grassWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "bug" {
            let z = zip(grassWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "rock" {
            let z = zip(grassWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "ghost" {
            let z = zip(grassWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "dragon" {
            let z = zip(grassWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "dark" {
            let z = zip(grassWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "steel" {
            let z = zip(grassWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "fairy" {
            let z = zip(grassWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Ice
        
        if type1 == "ice" && type2 == "normal" {
            let z = zip(iceWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "fire" {
            let z = zip(iceWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "water" {
            let z = zip(iceWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "electric" {
            let z = zip(iceWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "grass" {
            let z = zip(iceWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "fighting" {
            let z = zip(iceWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "poison" {
            let z = zip(iceWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "ground" {
            let z = zip(iceWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "flying" {
            let z = zip(iceWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "psychic" {
            let z = zip(iceWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "bug" {
            let z = zip(iceWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "rock" {
            let z = zip(iceWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "ghost" {
            let z = zip(iceWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "dragon" {
            let z = zip(iceWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "dark" {
            let z = zip(iceWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "steel" {
           let z = zip(iceWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "fairy" {
            let z = zip(iceWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Fighting
        
        if type1 == "fighting" && type2 == "normal" {
            let z = zip(fightingWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "fire" {
            let z = zip(fightingWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "water" {
            let z = zip(fightingWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "electric" {
            let z = zip(fightingWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "grass" {
            let z = zip(fightingWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "ice" {
            let z = zip(fightingWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "poison" {
            let z = zip(fightingWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "ground" {
            let z = zip(fightingWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "flying" {
            let z = zip(fightingWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "psychic" {
            let z = zip(fightingWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "bug" {
            let z = zip(fightingWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "rock" {
            let z = zip(fightingWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "ghost" {
            let z = zip(fightingWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "dragon" {
            let z = zip(fightingWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "dark" {
            let z = zip(fightingWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "steel" {
            let z = zip(fightingWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "fairy" {
            let z = zip(fightingWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Poison
        
        if type1 == "poison" && type2 == "normal" {
            let z = zip(poisonWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "fire" {
            let z = zip(poisonWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "water" {
            let z = zip(poisonWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "electric" {
            let z = zip(poisonWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "grass" {
            let z = zip(poisonWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "ice" {
            let z = zip(poisonWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "fighting" {
            let z = zip(poisonWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "ground" {
            let z = zip(poisonWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "flying" {
            let z = zip(poisonWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "psychic" {
            let z = zip(poisonWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "bug" {
            let z = zip(poisonWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "rock" {
            let z = zip(poisonWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "ghost" {
            let z = zip(poisonWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "dragon" {
            let z = zip(poisonWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "dark" {
            let z = zip(poisonWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "steel" {
            let z = zip(poisonWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "fairy" {
            let z = zip(poisonWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Ground
        
        if type1 == "ground" && type2 == "normal" {
            let z = zip(groundWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "fire" {
            let z = zip(groundWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "water" {
            let z = zip(groundWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "electric" {
            let z = zip(groundWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "grass" {
            let z = zip(groundWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "ice" {
            let z = zip(groundWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "fighting" {
            let z = zip(groundWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "poison" {
            let z = zip(groundWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "flying" {
            let z = zip(groundWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "psychic" {
            let z = zip(groundWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "bug" {
            let z = zip(groundWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "rock" {
            let z = zip(groundWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "ghost" {
            let z = zip(groundWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "dragon" {
            let z = zip(groundWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "dark" {
            let z = zip(groundWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "steel" {
            let z = zip(groundWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "fairy" {
            let z = zip(groundWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Flying
        
        if type1 == "flying" && type2 == "normal" {
            let z = zip(flyingWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "fire" {
            let z = zip(flyingWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "water" {
            let z = zip(flyingWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "electric" {
            let z = zip(flyingWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "grass" {
            let z = zip(flyingWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "ice" {
            let z = zip(flyingWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "fighting" {
            let z = zip(flyingWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "poison" {
            let z = zip(flyingWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "ground" {
            let z = zip(flyingWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "psychic" {
            let z = zip(flyingWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "bug" {
            let z = zip(flyingWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "rock" {
            let z = zip(flyingWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "ghost" {
            let z = zip(flyingWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "dragon" {
            let z = zip(flyingWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "dark" {
            let z = zip(flyingWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "steel" {
            let z = zip(flyingWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "fairy" {
            let z = zip(flyingWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Psychic
        
        if type1 == "psychic" && type2 == "normal" {
            let z = zip(psychicWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "fire" {
            let z = zip(psychicWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "water" {
            let z = zip(psychicWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "electric" {
            let z = zip(psychicWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "grass" {
            let z = zip(psychicWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "ice" {
            let z = zip(psychicWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "fighting" {
            let z = zip(psychicWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "poison" {
            let z = zip(psychicWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "ground" {
            let z = zip(psychicWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "flying" {
            let z = zip(psychicWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "bug" {
            let z = zip(psychicWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "rock" {
            let z = zip(psychicWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "ghost" {
            let z = zip(psychicWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "dragon" {
            let z = zip(psychicWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "dark" {
            let z = zip(psychicWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "steel" {
            let z = zip(psychicWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "fairy" {
            let z = zip(psychicWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Bug
        
        if type1 == "bug" && type2 == "normal" {
            let z = zip(bugWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "fire" {
            let z = zip(bugWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "water" {
            let z = zip(bugWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "electric" {
            let z = zip(bugWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "grass" {
            let z = zip(bugWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "ice" {
            let z = zip(bugWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "fighting" {
            let z = zip(bugWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "poison" {
            let z = zip(bugWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "ground" {
            let z = zip(bugWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "flying" {
            let z = zip(bugWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "psychic" {
            let z = zip(bugWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "rock" {
            let z = zip(bugWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "ghost" {
            let z = zip(bugWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "dragon" {
            let z = zip(bugWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "dark" {
            let z = zip(bugWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "steel" {
            let z = zip(bugWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "fairy" {
            let z = zip(bugWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Rock
        
        if type1 == "rock" && type2 == "normal" {
            let z = zip(rockWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "fire" {
            let z = zip(rockWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "water" {
            let z = zip(rockWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "electric" {
            let z = zip(rockWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "grass" {
            let z = zip(rockWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "ice" {
            let z = zip(rockWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "fighting" {
            let z = zip(rockWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "poison" {
            let z = zip(rockWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "ground" {
            let z = zip(rockWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "flying" {
            let z = zip(rockWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "psychic" {
            let z = zip(rockWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "bug" {
            let z = zip(rockWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "ghost" {
            let z = zip(rockWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "dragon" {
            let z = zip(rockWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "dark" {
            let z = zip(rockWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "steel" {
            let z = zip(rockWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "fairy" {
            let z = zip(rockWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Ghost
        
        if type1 == "ghost" && type2 == "normal" {
            let z = zip(ghostWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "fire" {
            let z = zip(ghostWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "water" {
            let z = zip(ghostWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "electric" {
            let z = zip(ghostWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "grass" {
            let z = zip(ghostWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "ice" {
            let z = zip(ghostWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "fighting" {
            let z = zip(ghostWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "poison" {
            let z = zip(ghostWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "ground" {
            let z = zip(ghostWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "flying" {
            let z = zip(ghostWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "psychic" {
            let z = zip(ghostWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "bug" {
            let z = zip(ghostWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "rock" {
            let z = zip(ghostWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "dragon" {
            let z = zip(ghostWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "dark" {
            let z = zip(ghostWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "steel" {
            let z = zip(ghostWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "fairy" {
            let z = zip(ghostWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Dragon
        
        if type1 == "dragon" && type2 == "normal" {
            let z = zip(dragonWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "fire" {
            let z = zip(dragonWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "water" {
            let z = zip(dragonWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "electric" {
            let z = zip(dragonWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "grass" {
            let z = zip(dragonWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "ice" {
            let z = zip(dragonWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "fighting" {
            let z = zip(dragonWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "poison" {
            let z = zip(dragonWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "ground" {
            let z = zip(dragonWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "flying" {
            let z = zip(dragonWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "psychic" {
            let z = zip(dragonWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "bug" {
            let z = zip(dragonWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "rock" {
            let z = zip(dragonWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "ghost" {
            let z = zip(dragonWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "dark" {
            let z = zip(dragonWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "steel" {
            let z = zip(dragonWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "fairy" {
            let z = zip(dragonWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Dark
        
        if type1 == "dark" && type2 == "normal" {
            let z = zip(darkWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "fire" {
            let z = zip(darkWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "water" {
            let z = zip(darkWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "electric" {
            let z = zip(darkWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "grass" {
            let z = zip(darkWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "ice" {
            let z = zip(darkWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "fighting" {
            let z = zip(darkWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "poison" {
            let z = zip(darkWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "ground" {
            let z = zip(darkWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "flying" {
            let z = zip(darkWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "psychic" {
            let z = zip(darkWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "bug" {
            let z = zip(darkWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "rock" {
            let z = zip(darkWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "ghost" {
            let z = zip(darkWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "dragon" {
            let z = zip(darkWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "steel" {
            let z = zip(darkWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "fairy" {
            let z = zip(darkWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Steel
        
        if type1 == "steel" && type2 == "normal" {
            let z = zip(steelWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "fire" {
            let z = zip(steelWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "water" {
            let z = zip(steelWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "electric" {
            let z = zip(steelWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "grass" {
            let z = zip(steelWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "ice" {
            let z = zip(steelWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "fighting" {
            let z = zip(steelWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "poison" {
            let z = zip(steelWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "ground" {
            let z = zip(steelWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "flying" {
            let z = zip(steelWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "psychic" {
            let z = zip(steelWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "bug" {
            let z = zip(steelWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "rock" {
            let z = zip(steelWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "ghost" {
            let z = zip(steelWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "dragon" {
            let z = zip(steelWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "dark" {
            let z = zip(steelWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "fairy" {
            let z = zip(steelWeaknessesFirst, fairyWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Fairy
        
        if type1 == "fairy" && type2 == "normal" {
            let z = zip(fairyWeaknessesFirst, normalWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "fire" {
            let z = zip(fairyWeaknessesFirst, fireWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "water" {
            let z = zip(fairyWeaknessesFirst, waterWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "electric" {
            let z = zip(fairyWeaknessesFirst, electricWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "grass" {
            let z = zip(fairyWeaknessesFirst, grassWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "ice" {
            let z = zip(fairyWeaknessesFirst, iceWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "fighting" {
            let z = zip(fairyWeaknessesFirst, fightingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "poison" {
            let z = zip(fairyWeaknessesFirst, poisonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "ground" {
            let z = zip(fairyWeaknessesFirst, groundWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "flying" {
            let z = zip(fairyWeaknessesFirst, flyingWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "psychic" {
            let z = zip(fairyWeaknessesFirst, psychicWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "bug" {
            let z = zip(fairyWeaknessesFirst, bugWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "rock" {
            let z = zip(fairyWeaknessesFirst, rockWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "ghost" {
            let z = zip(fairyWeaknessesFirst, ghostWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "dragon" {
            let z = zip(fairyWeaknessesFirst, dragonWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "dark" {
            let z = zip(fairyWeaknessesFirst, darkWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "steel" {
            let z = zip(fairyWeaknessesFirst, steelWeaknessesFirst).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        return weaknesses
    }
    
    func calculateSecondTypeDefensesForDualType(type1: String, type2: String) -> [String] {
        
        var weaknesses: [String] = []
        
        // MARK: Normal
        
        if type1 == "normal" && type2 == "fire" {
            let z = zip(normalWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "water" {
            let z = zip(normalWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "electric" {
            let z = zip(normalWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "grass" {
            let z = zip(normalWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "ice" {
            let z = zip(normalWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "fighting" {
            let z = zip(normalWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "poison" {
            let z = zip(normalWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "ground" {
            let z = zip(normalWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "flying" {
            let z = zip(normalWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "psychic" {
            let z = zip(normalWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "bug" {
            let z = zip(normalWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "rock" {
            let z = zip(normalWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "ghost" {
            let z = zip(normalWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "dragon" {
            let z = zip(normalWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "dark" {
            let z = zip(normalWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "steel" {
            let z = zip(normalWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "normal" && type2 == "fairy" {
            let z = zip(normalWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Fire
        
        if type1 == "fire" && type2 == "normal" {
            let z = zip(fireWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "water" {
            let z = zip(fireWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "electric" {
            let z = zip(fireWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "grass" {
            let z = zip(fireWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "ice" {
            let z = zip(fireWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "fighting" {
            let z = zip(fireWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "poison" {
            let z = zip(fireWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "ground" {
            let z = zip(fireWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "flying" {
            let z = zip(fireWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "psychic" {
            let z = zip(fireWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "bug" {
            let z = zip(fireWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "rock" {
            let z = zip(fireWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "ghost" {
            let z = zip(fireWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "dragon" {
            let z = zip(fireWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "dark" {
            let z = zip(fireWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "steel" {
            let z = zip(fireWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fire" && type2 == "fairy" {
            let z = zip(fireWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Water
        
        if type1 == "water" && type2 == "normal" {
            let z = zip(waterWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "fire" {
            let z = zip(waterWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "electric" {
            let z = zip(waterWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "grass" {
            let z = zip(waterWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "ice" {
            let z = zip(waterWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "fighting" {
            let z = zip(waterWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "poison" {
            let z = zip(waterWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "ground" {
            let z = zip(waterWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "flying" {
            let z = zip(waterWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "psychic" {
            let z = zip(waterWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "bug" {
            let z = zip(waterWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "rock" {
            let z = zip(waterWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "ghost" {
            let z = zip(waterWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "dragon" {
            let z = zip(waterWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "dark" {
            let z = zip(waterWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "steel" {
            let z = zip(waterWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "water" && type2 == "fairy" {
            let z = zip(waterWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Electric
        
        if type1 == "electric" && type2 == "normal" {
            let z = zip(electricWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "fire" {
            let z = zip(electricWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "water" {
            let z = zip(electricWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "grass" {
            let z = zip(electricWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "ice" {
            let z = zip(electricWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "fighting" {
            let z = zip(electricWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "poison" {
            let z = zip(electricWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "ground" {
            let z = zip(electricWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "flying" {
            let z = zip(electricWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "psychic" {
            let z = zip(electricWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "bug" {
            let z = zip(electricWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "rock" {
            let z = zip(electricWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "ghost" {
            let z = zip(electricWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "dragon" {
            let z = zip(electricWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "dark" {
            let z = zip(electricWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "steel" {
            let z = zip(electricWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "electric" && type2 == "fairy" {
            let z = zip(electricWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Grass
        
        if type1 == "grass" && type2 == "normal" {
            let z = zip(grassWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "fire" {
            let z = zip(grassWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "water" {
            let z = zip(grassWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "electric" {
            let z = zip(grassWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "ice" {
            let z = zip(grassWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "fighting" {
            let z = zip(grassWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "poison" {
            let z = zip(grassWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "ground" {
            let z = zip(grassWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "flying" {
            let z = zip(grassWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "psychic" {
            let z = zip(grassWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "bug" {
            let z = zip(grassWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "rock" {
            let z = zip(grassWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "ghost" {
            let z = zip(grassWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "dragon" {
            let z = zip(grassWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "dark" {
            let z = zip(grassWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "steel" {
            let z = zip(grassWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "grass" && type2 == "fairy" {
            let z = zip(grassWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Ice
        
        if type1 == "ice" && type2 == "normal" {
            let z = zip(iceWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "fire" {
            let z = zip(iceWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "water" {
            let z = zip(iceWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "electric" {
            let z = zip(iceWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "grass" {
            let z = zip(iceWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "fighting" {
            let z = zip(iceWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "poison" {
            let z = zip(iceWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "ground" {
            let z = zip(iceWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "flying" {
            let z = zip(iceWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "psychic" {
            let z = zip(iceWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "bug" {
            let z = zip(iceWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "rock" {
            let z = zip(iceWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "ghost" {
            let z = zip(iceWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "dragon" {
            let z = zip(iceWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "dark" {
            let z = zip(iceWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "steel" {
           let z = zip(iceWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ice" && type2 == "fairy" {
            let z = zip(iceWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Fighting
        
        if type1 == "fighting" && type2 == "normal" {
            let z = zip(fightingWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "fire" {
            let z = zip(fightingWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "water" {
            let z = zip(fightingWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "electric" {
            let z = zip(fightingWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "grass" {
            let z = zip(fightingWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "ice" {
            let z = zip(fightingWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "poison" {
            let z = zip(fightingWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "ground" {
            let z = zip(fightingWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "flying" {
            let z = zip(fightingWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "psychic" {
            let z = zip(fightingWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "bug" {
            let z = zip(fightingWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "rock" {
            let z = zip(fightingWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "ghost" {
            let z = zip(fightingWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "dragon" {
            let z = zip(fightingWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "dark" {
            let z = zip(fightingWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "steel" {
            let z = zip(fightingWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fighting" && type2 == "fairy" {
            let z = zip(fightingWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Poison
        
        if type1 == "poison" && type2 == "normal" {
            let z = zip(poisonWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "fire" {
            let z = zip(poisonWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "water" {
            let z = zip(poisonWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "electric" {
            let z = zip(poisonWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "grass" {
            let z = zip(poisonWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "ice" {
            let z = zip(poisonWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "fighting" {
            let z = zip(poisonWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "ground" {
            let z = zip(poisonWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "flying" {
            let z = zip(poisonWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "psychic" {
            let z = zip(poisonWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "bug" {
            let z = zip(poisonWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "rock" {
            let z = zip(poisonWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "ghost" {
            let z = zip(poisonWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "dragon" {
            let z = zip(poisonWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "dark" {
            let z = zip(poisonWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "steel" {
            let z = zip(poisonWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "poison" && type2 == "fairy" {
            let z = zip(poisonWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Ground
        
        if type1 == "ground" && type2 == "normal" {
            let z = zip(groundWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "fire" {
            let z = zip(groundWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "water" {
            let z = zip(groundWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "electric" {
            let z = zip(groundWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "grass" {
            let z = zip(groundWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "ice" {
            let z = zip(groundWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "fighting" {
            let z = zip(groundWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "poison" {
            let z = zip(groundWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "flying" {
            let z = zip(groundWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "psychic" {
            let z = zip(groundWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "bug" {
            let z = zip(groundWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "rock" {
            let z = zip(groundWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "ghost" {
            let z = zip(groundWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "dragon" {
            let z = zip(groundWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "dark" {
            let z = zip(groundWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "steel" {
            let z = zip(groundWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ground" && type2 == "fairy" {
            let z = zip(groundWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Flying
        
        if type1 == "flying" && type2 == "normal" {
            let z = zip(flyingWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "fire" {
            let z = zip(flyingWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "water" {
            let z = zip(flyingWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "electric" {
            let z = zip(flyingWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "grass" {
            let z = zip(flyingWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "ice" {
            let z = zip(flyingWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "fighting" {
            let z = zip(flyingWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "poison" {
            let z = zip(flyingWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "ground" {
            let z = zip(flyingWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "psychic" {
            let z = zip(flyingWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "bug" {
            let z = zip(flyingWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "rock" {
            let z = zip(flyingWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "ghost" {
            let z = zip(flyingWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "dragon" {
            let z = zip(flyingWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "dark" {
            let z = zip(flyingWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "steel" {
            let z = zip(flyingWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "flying" && type2 == "fairy" {
            let z = zip(flyingWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Psychic
        
        if type1 == "psychic" && type2 == "normal" {
            let z = zip(psychicWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "fire" {
            let z = zip(psychicWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "water" {
            let z = zip(psychicWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "electric" {
            let z = zip(psychicWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "grass" {
            let z = zip(psychicWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "ice" {
            let z = zip(psychicWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "fighting" {
            let z = zip(psychicWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "poison" {
            let z = zip(psychicWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "ground" {
            let z = zip(psychicWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "flying" {
            let z = zip(psychicWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "bug" {
            let z = zip(psychicWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "rock" {
            let z = zip(psychicWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "ghost" {
            let z = zip(psychicWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "dragon" {
            let z = zip(psychicWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "dark" {
            let z = zip(psychicWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "steel" {
            let z = zip(psychicWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "psychic" && type2 == "fairy" {
            let z = zip(psychicWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Bug
        
        if type1 == "bug" && type2 == "normal" {
            let z = zip(bugWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "fire" {
            let z = zip(bugWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "water" {
            let z = zip(bugWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "electric" {
            let z = zip(bugWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "grass" {
            let z = zip(bugWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "ice" {
            let z = zip(bugWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "fighting" {
            let z = zip(bugWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "poison" {
            let z = zip(bugWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "ground" {
            let z = zip(bugWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "flying" {
            let z = zip(bugWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "psychic" {
            let z = zip(bugWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "rock" {
            let z = zip(bugWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "ghost" {
            let z = zip(bugWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "dragon" {
            let z = zip(bugWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "dark" {
            let z = zip(bugWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "steel" {
            let z = zip(bugWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "bug" && type2 == "fairy" {
            let z = zip(bugWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Rock
        
        if type1 == "rock" && type2 == "normal" {
            let z = zip(rockWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "fire" {
            let z = zip(rockWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "water" {
            let z = zip(rockWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "electric" {
            let z = zip(rockWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "grass" {
            let z = zip(rockWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "ice" {
            let z = zip(rockWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "fighting" {
            let z = zip(rockWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "poison" {
            let z = zip(rockWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "ground" {
            let z = zip(rockWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "flying" {
            let z = zip(rockWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "psychic" {
            let z = zip(rockWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "bug" {
            let z = zip(rockWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "ghost" {
            let z = zip(rockWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "dragon" {
            let z = zip(rockWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "dark" {
            let z = zip(rockWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "steel" {
            let z = zip(rockWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "rock" && type2 == "fairy" {
            let z = zip(rockWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Ghost
        
        if type1 == "ghost" && type2 == "normal" {
            let z = zip(ghostWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "fire" {
            let z = zip(ghostWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "water" {
            let z = zip(ghostWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "electric" {
            let z = zip(ghostWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "grass" {
            let z = zip(ghostWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "ice" {
            let z = zip(ghostWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "fighting" {
            let z = zip(ghostWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "poison" {
            let z = zip(ghostWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "ground" {
            let z = zip(ghostWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "flying" {
            let z = zip(ghostWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "psychic" {
            let z = zip(ghostWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "bug" {
            let z = zip(ghostWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "rock" {
            let z = zip(ghostWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "dragon" {
            let z = zip(ghostWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "dark" {
            let z = zip(ghostWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "steel" {
            let z = zip(ghostWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "ghost" && type2 == "fairy" {
            let z = zip(ghostWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Dragon
        
        if type1 == "dragon" && type2 == "normal" {
            let z = zip(dragonWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "fire" {
            let z = zip(dragonWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "water" {
            let z = zip(dragonWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "electric" {
            let z = zip(dragonWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "grass" {
            let z = zip(dragonWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "ice" {
            let z = zip(dragonWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "fighting" {
            let z = zip(dragonWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "poison" {
            let z = zip(dragonWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "ground" {
            let z = zip(dragonWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "flying" {
            let z = zip(dragonWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "psychic" {
            let z = zip(dragonWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "bug" {
            let z = zip(dragonWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "rock" {
            let z = zip(dragonWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "ghost" {
            let z = zip(dragonWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "dark" {
            let z = zip(dragonWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "steel" {
            let z = zip(dragonWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dragon" && type2 == "fairy" {
            let z = zip(dragonWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Dark
        
        if type1 == "dark" && type2 == "normal" {
            let z = zip(darkWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "fire" {
            let z = zip(darkWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "water" {
            let z = zip(darkWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "electric" {
            let z = zip(darkWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "grass" {
            let z = zip(darkWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "ice" {
            let z = zip(darkWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "fighting" {
            let z = zip(darkWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "poison" {
            let z = zip(darkWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "ground" {
            let z = zip(darkWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "flying" {
            let z = zip(darkWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "psychic" {
            let z = zip(darkWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "bug" {
            let z = zip(darkWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "rock" {
            let z = zip(darkWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "ghost" {
            let z = zip(darkWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "dragon" {
            let z = zip(darkWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "steel" {
            let z = zip(darkWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "dark" && type2 == "fairy" {
            let z = zip(darkWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Steel
        
        if type1 == "steel" && type2 == "normal" {
            let z = zip(steelWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "fire" {
            let z = zip(steelWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "water" {
            let z = zip(steelWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "electric" {
            let z = zip(steelWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "grass" {
            let z = zip(steelWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "ice" {
            let z = zip(steelWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "fighting" {
            let z = zip(steelWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "poison" {
            let z = zip(steelWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "ground" {
            let z = zip(steelWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "flying" {
            let z = zip(steelWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "psychic" {
            let z = zip(steelWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "bug" {
            let z = zip(steelWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "rock" {
            let z = zip(steelWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "ghost" {
            let z = zip(steelWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "dragon" {
            let z = zip(steelWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "dark" {
            let z = zip(steelWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "steel" && type2 == "fairy" {
            let z = zip(steelWeaknessesSecond, fairyWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        
        // MARK: Fairy
        
        if type1 == "fairy" && type2 == "normal" {
            let z = zip(fairyWeaknessesSecond, normalWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "fire" {
            let z = zip(fairyWeaknessesSecond, fireWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "water" {
            let z = zip(fairyWeaknessesSecond, waterWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "electric" {
            let z = zip(fairyWeaknessesSecond, electricWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "grass" {
            let z = zip(fairyWeaknessesSecond, grassWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "ice" {
            let z = zip(fairyWeaknessesSecond, iceWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "fighting" {
            let z = zip(fairyWeaknessesSecond, fightingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "poison" {
            let z = zip(fairyWeaknessesSecond, poisonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "ground" {
            let z = zip(fairyWeaknessesSecond, groundWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "flying" {
            let z = zip(fairyWeaknessesSecond, flyingWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "psychic" {
            let z = zip(fairyWeaknessesSecond, psychicWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "bug" {
            let z = zip(fairyWeaknessesSecond, bugWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "rock" {
            let z = zip(fairyWeaknessesSecond, rockWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "ghost" {
            let z = zip(fairyWeaknessesSecond, ghostWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "dragon" {
            let z = zip(fairyWeaknessesSecond, dragonWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "dark" {
            let z = zip(fairyWeaknessesSecond, darkWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        } else if type1 == "fairy" && type2 == "steel" {
            let z = zip(fairyWeaknessesSecond, steelWeaknessesSecond).map{ $0 * $1 }
            weaknesses = z.map { String($0) }
            return weaknesses
        }
        return weaknesses
    }
    
}
