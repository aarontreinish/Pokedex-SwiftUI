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

    var name: String
    
    func imageFromData(_ data:Data) -> UIImage {
        UIImage(data: data) ?? UIImage()
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            BackgroundDetailView()
            HStack(alignment: .center) {
                UrlImageView(urlString: networkManager.details?.sprites?.frontDefault ?? "")
                VStack(alignment: .leading) {
                    Text("#\(networkManager.details?.id ?? 0)")
                    Text(name.capitalizingFirstLetter())
                    if networkManager.types.count == 1 {
                        Text("   \(networkManager.types.first ?? "Can't find type")   ")
                            .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(networkManager.types.first ?? "normal")")))
                    } else if networkManager.types.count == 2 {
                        HStack {
                            Text("   \(networkManager.types.first ?? "Can't find type")   ")
                                .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(networkManager.types.first ?? "normal")")))
                            Text("   \(networkManager.types.last ?? "Can't find type")   ")
                                .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(networkManager.types.last ?? "normal")")))
                        }
                    }
                    
                }
                Spacer()
            }
            
            
            
            
//            VStack(alignment: .center) {
//                //                    RoundedRectangle(cornerRadius: 45)
//                //                        .frame(width: 380, height: 200)
//                //                        .foregroundColor(.gray)
//                UrlImageView(urlString: networkManager.details?.sprites?.frontDefault ?? "")
//
//                VStack(alignment: .center, spacing: 25) {
//                    Text("Weight: \(networkManager.details?.weight ?? 0)")
//
//                    if networkManager.types.count == 1 {
//                        Text("Type: \(networkManager.types.first ?? "Can't find type")")
//                    } else if networkManager.types.count == 2 {
//                        Text("Type: \(networkManager.types.first ?? "Can't find type")  \(networkManager.types.last ?? "")")
//                    }
//                }
//                Spacer()
//
//            }
        }
        .navigationBarTitle(Text(name.capitalizingFirstLetter()), displayMode: .automatic)
        .onAppear {
            self.networkManager.getDetails(url: self.createUrl())
        }
        .onDisappear {
            self.networkManager.types = []
        }
    }
    
    func createUrl() -> String {
        let url = "https://pokeapi.co/api/v2/pokemon/\(name)"
        
        return url
    }
}

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search for any Pokemon")
                
                List {
                    ForEach(self.networkManager.names.filter {
                        self.searchText.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchText)
                    }, id: \.self) { names in
                        NavigationLink(destination: DetailView(name: names)) {
                            Text(names)
                        }
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

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
