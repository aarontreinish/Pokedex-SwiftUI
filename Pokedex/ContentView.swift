//
//  ContentView.swift
//  Pokedex
//
//  Created by Aaron Treinish on 3/29/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var url: String
    var name: String
    
    func imageFromData(_ data:Data) -> UIImage {
        UIImage(data: data) ?? UIImage()
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(networkManager.details?.sprites?.frontDefault ?? "")")
                UrlImageView(urlString: networkManager.details?.sprites?.frontDefault ?? "")
            }
        }
        .navigationBarTitle(Text(name), displayMode: .large)
        .onAppear {
            self.networkManager.getDetails(url: self.url)
        }
    }
}

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search for any Pokemon")
                List(networkManager.results) { results in
                    NavigationLink(destination: DetailView(url: results.url ?? "", name: results.name ?? "")) {
                        Text(results.name ?? "")
                    }
                }
            }
            .navigationBarTitle("Pokemon")
        }
        .onAppear {
            self.networkManager.getPokemon()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
