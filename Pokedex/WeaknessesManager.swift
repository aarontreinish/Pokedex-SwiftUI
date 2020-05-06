//
//  WeaknessesManager.swift
//  Pokedex
//
//  Created by Aaron Treinish on 5/6/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation

class WeaknessesManager: ObservableObject {
    
    func getWeaknessesForSingleType(type1: String) -> [String] {
        
        var weaknesses: [String] = []
        
        if type1 == "bug" {
            weaknesses = ["fire", "flying", "rock"]
            return weaknesses
        } else if type1 == "dark" {
            weaknesses = ["bug", "fairy", "fighting"]
            return weaknesses
        } else if type1 == "dragon" {
            weaknesses = ["dragon", "fairy", "ice"]
            return weaknesses
        } else if type1 == "electric" {
            weaknesses = ["ground"]
            return weaknesses
        } else if type1 == "fairy" {
            weaknesses = ["poison", "steel"]
            return weaknesses
        } else if type1 == "fighting" {
            weaknesses = ["fairy", "flying", "psychic"]
            return weaknesses
        } else if type1 == "fire" {
            weaknesses = ["ground", "rock", "water"]
            return weaknesses
        } else if type1 == "flying" {
            weaknesses = ["electric", "ice", "rock"]
            return weaknesses
        } else if type1 == "ghost" {
            weaknesses = ["dark", "ghost"]
            return weaknesses
        } else if type1 == "grass" {
            weaknesses = ["bug", "fire", "flying", "ice", "poison"]
            return weaknesses
        } else if type1 == "ground" {
            weaknesses = ["grass", "ice", "water"]
            return weaknesses
        } else if type1 == "ice" {
            weaknesses = ["fighting", "fire", "rock", "steel"]
            return weaknesses
        } else if type1 == "normal" {
            weaknesses = ["fighting"]
            return weaknesses
        } else if type1 == "poison" {
            weaknesses = ["ground", "psychic"]
            return weaknesses
        } else if type1 == "psychic" {
            weaknesses = ["bug", "dark", "ghost"]
            return weaknesses
        } else if type1 == "rock" {
            weaknesses = ["fighting", "grass", "ground", "steel", "water"]
            return weaknesses
        } else if type1 == "steel" {
            weaknesses = ["fighting", "fire", "ground"]
            return weaknesses
        } else if type1 == "water" {
            weaknesses = ["electric", "grass"]
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
}
