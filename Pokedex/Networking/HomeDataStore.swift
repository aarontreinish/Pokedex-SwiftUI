//
//  DataStore.swift
//  Pokedex
//
//  Created by Aaron Treinish on 4/30/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import SwiftUI
import Combine

class HomeDataStore: ObservableObject {
    @Published var names: [String] = []
    @Published var results: [Result] = []
    
    init() {
        getPokemon()
    }
    
    func getPokemon() {
        NetworkManager().getPokemon { (results) in
            self.results = results
            self.appendResultsData()
        }
    }
    
    func appendResultsData() {
        for result in results {
            names.append(result.name ?? "")
            //urls.append(result.url ?? "")
        }
    }
}
