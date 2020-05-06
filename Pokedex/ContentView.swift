//
//  ContentView.swift
//  Pokedex
//
//  Created by Aaron Treinish on 3/29/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import SwiftUI

class Name: ObservableObject {
    @Published var name = ""
}

struct DetailView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    @ObservedObject var weaknessManager = WeaknessesManager()
    
    @State var selected = 0
    
    var name = ""
    
    @State var details: Details?
    @State var typesArray: [String] = []
    
    @State var species: Species?
    
    @State var types: Types?
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color("\(typesArray.last ?? "normal")Background"))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HStack(alignment: .center) {
                    UrlImageView(urlString: details?.sprites?.frontDefault ?? "")
                    //.padding(.leading)
                    VStack(alignment: .leading) {
                        Text("#\(details?.id ?? 0)")
                            .padding(.bottom)
                            .foregroundColor(.white)
                        //.font(.largeTitle)
                        Text(name.capitalizingFirstLetter())
                            .padding(.bottom)
                            .foregroundColor(.white)
                        //.font(.largeTitle)
                        if typesArray.count == 1 {
                            Text("   \(typesArray.first ?? "Can't find type")   ")
                                .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(typesArray.first ?? "normal")")))
                        } else if typesArray.count == 2 {
                            HStack {
                                Text("   \(typesArray.last ?? "Can't find type")   ")
                                    .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(typesArray.last ?? "normal")")))
                                    .foregroundColor(.white)
                                Text("   \(typesArray.first ?? "Can't find type")   ")
                                    .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(typesArray.first ?? "normal")")))
                                    .foregroundColor(.white)
                            }
                        }
                        
                    }
                    Spacer()
                }
                
                HStack(spacing: 50) {
                    Button(action: {
                        self.selected = 0
                        print(self.selected)
                    }) {
                        Text("About")
                    }
                    .foregroundColor(self.selected == 0 ? .white : .gray)
                    
                    Button(action: {
                        self.selected = 1
                        print(self.selected)
                    }) {
                        Text("Stats")
                    }
                    .foregroundColor(self.selected == 1 ? .white : .gray)
                    
                    Button(action: {
                        self.selected = 2
                        print(self.selected)
                    }) {
                        Text("Moves")
                    }
                    .foregroundColor(self.selected == 2 ? .white : .gray)
                    
                    Button(action: {
                        self.selected = 3
                        print(self.selected)
                    }) {
                        Text("Evolution")
                    }
                    .foregroundColor(self.selected == 3 ? .white : .gray)
                }
                .padding(10)
                .background(Color("LightGray"))
                .clipShape(Capsule())
                
                if selected == 0 {
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: screenWidth, height: (screenHeight * (3/4)))
                            .foregroundColor(.white)
                            .edgesIgnoringSafeArea(.bottom)
                        
                        //ZStack(alignment: .leading) {
                        VStack(alignment: .leading, spacing: 20) {
                            Text(getFlavorText())
                                .foregroundColor(.gray)
                                .lineLimit(nil)
                                .font(.system(size: 15))
                                .padding(.top, 10)
                            
                            
                            Text("Pokedex Data")
                                .foregroundColor(Color("\(typesArray.last ?? "normal")"))
                            
                            HStack {
                                Text("Species")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                Text(getGenus())
                                    .foregroundColor(.gray)
                            }
                            
                            HStack{
                                Text("Height")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                Text("\(calculateHeight()) in")
                                    .foregroundColor(.gray)
                            }
                            
                            HStack {
                                Text("Weight")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                Text("\(calculateWeight()) lbs")
                                    .foregroundColor(.gray)
                            }
                            
                            HStack {
                                Text("Abilities")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                if details?.abilities?.count == 1 {
                                    Text(details?.abilities?.first?.ability?.name ?? "")
                                        .foregroundColor(.gray)
                                } else if details?.abilities?.count ?? 0 > 1 {
                                    Text("\(details?.abilities?.last?.ability?.name ?? "") and \(details?.abilities?.first?.ability?.name ?? "")")
                                        .foregroundColor(.gray)
                                }
                            }
                            
                            HStack {
                                Text("Weaknesses")
                                    .frame(width: 100, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                if typesArray.count == 1 {
                                    ForEach(weaknessManager.getWeaknessesForSingleType(type1: typesArray.first ?? "normal"), id: \.self) { weaknesses in
                                        Text("  \(weaknesses)  ")
                                            .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(weaknesses)")))
                                    }
                                        
                                } else if typesArray.count == 2 {
                                    ForEach(weaknessManager.getWeaknessesForDualTypes(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal"), id: \.self) { weaknesses in
                                        Text("  \(weaknesses)  ")
                                            .background(RoundedRectangle(cornerRadius: 4).foregroundColor(Color("\(weaknesses)")))
                                    }
                                }
                            }
                            
                        }
                        .padding(.leading, 10)
                        //}
                    }
                } else if selected == 1 {
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: screenWidth, height: (screenHeight * (3/4)))
                            .foregroundColor(.white)
                            .edgesIgnoringSafeArea(.bottom)
                        
                        VStack(alignment: .leading) {
                            Text("Base Stats")
                                .foregroundColor(Color("\(typesArray.last ?? "normal")"))
                                .padding(.top, 10)
                            
                            BarView(color: "\(typesArray.last ?? "normal")", stat: "HP", statValue: CGFloat(details?.stats?[5].baseStat ?? 0), statValueText: details?.stats?[5].baseStat ?? 0)
                            
                            BarView(color: "\(typesArray.last ?? "normal")", stat: "Attack", statValue: CGFloat(details?.stats?[4].baseStat ?? 0), statValueText: details?.stats?[4].baseStat ?? 0)
                            
                            BarView(color: "\(typesArray.last ?? "normal")", stat: "Defense", statValue: CGFloat(details?.stats?[3].baseStat ?? 0), statValueText: details?.stats?[3].baseStat ?? 0)
                            
                            BarView(color: "\(typesArray.last ?? "normal")", stat: "Sp. Atk", statValue: CGFloat(details?.stats?[2].baseStat ?? 0), statValueText: details?.stats?[2].baseStat ?? 0)
                            
                            BarView(color: "\(typesArray.last ?? "normal")", stat: "Sp. Def", statValue: CGFloat(details?.stats?[1].baseStat ?? 0), statValueText: details?.stats?[1].baseStat ?? 0)
                            
                            BarView(color: "\(typesArray.last ?? "normal")", stat: "Speed", statValue: CGFloat(details?.stats?[0].baseStat ?? 0), statValueText: details?.stats?[0].baseStat ?? 0)
                            
                            BarView(color: "\(typesArray.last ?? "normal")", stat: "Total", statValue: getTotalStats(), statValueText: getTotalStatsText())
                        }
                        .padding(.leading, 10)
                    }
                } else if selected == 2 {
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: screenWidth, height: (screenHeight * (3/4)))
                            .foregroundColor(.white)
                            .edgesIgnoringSafeArea(.bottom)
                        
                        
                    }
                } else if selected == 3 {
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: screenWidth, height: (screenHeight * (3/4)))
                            .foregroundColor(.white)
                            .edgesIgnoringSafeArea(.bottom)
                    }
                }
            }
        }
        .onAppear() {
            self.networkManager.getDetails(url: "https://pokeapi.co/api/v2/pokemon/\(self.name)") { (details) in
                self.details = details
                self.appendDetailsData()
            }
            self.networkManager.getSpecies(url: "https://pokeapi.co/api/v2/pokemon-species/\(self.name)") { (species) in
                self.species = species
            }
            self.networkManager.getTypes(url: "https://pokeapi.co/api/v2/type/\(self.name)") { (types) in
                self.types = types
                //self.getWeaknesses()
            }
        }
    }
    
    func getTotalStats() -> CGFloat {
        let first = (details?.stats?[5].baseStat ?? 0) + (details?.stats?[4].baseStat ?? 0)
        let second = (details?.stats?[3].baseStat ?? 0) + (details?.stats?[2].baseStat ?? 0)
        let third =  (details?.stats?[1].baseStat ?? 0) + (details?.stats?[0].baseStat ?? 0)
        
        let totalInt = first + second + third
        
        let total = CGFloat(totalInt)
        
        if total > (screenWidth * 5/8) && (total / 2) > (screenWidth * 5/8) {
            return total * (1/3)
        } else {
            return total / 2
        }
    }
    
    func getTotalStatsText() -> Int {
        let first = (details?.stats?[5].baseStat ?? 0) + (details?.stats?[4].baseStat ?? 0)
        let second = (details?.stats?[3].baseStat ?? 0) + (details?.stats?[2].baseStat ?? 0)
        let third =  (details?.stats?[1].baseStat ?? 0) + (details?.stats?[0].baseStat ?? 0)
        
        let totalInt = first + second + third
        
        return totalInt
    }
    
    func appendDetailsData() {
        for type in details?.types ?? [] {
            typesArray.append(type.type?.name ?? "Can't find type")
        }
    }
    
    func getFlavorText() -> String {
        var text = ""
        
        for flavorText in species?.flavor_text_entries ?? [] {
            
            if text.isEmpty && flavorText.language?.name == "en" {
                text = flavorText.flavor_text ?? ""
            }
        }
        return text
    }
    
    func getGenus() -> String {
        var text = ""
        
        for genera in species?.genera ?? [] {
            
            if text.isEmpty && genera.language?.name == "en" {
                text = genera.genus ?? ""
            }
        }
        return text
    }
    
    func calculateWeight() -> Int {
        let weightFloat = Float((details?.weight ?? 0)) / 4.536
        
        let weight = Int(weightFloat)
        
        return weight
    }
    
    func calculateHeight() -> Int {
        let heightFloat = Float((details?.height ?? 0)) * 3.937
        
        let height = Int(heightFloat)
        
        return height
    }
}

struct BarView: View {
    
    var color: String
    
    var stat: String
    
    var statValue: CGFloat
    
    var statValueText: Int
    
    let screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        HStack {
            Text(stat)
                .frame(width: 70, height: 20, alignment: .leading)
                .foregroundColor(.black)
            ZStack(alignment: .leading) {
                Capsule().frame(width: screenWidth * (5/8), height: 20)
                    .foregroundColor(.gray)
                Capsule().frame(width: statValue, height: 20)
                    .foregroundColor(Color(color))
                
            }
            Text("\(String(statValueText))")
                .foregroundColor(.black)
        }
    }
}

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    @EnvironmentObject var environmentObjectName: Name
    
    @ObservedObject var homeDataStore = HomeDataStore()
    @State var names: [String] = []
    
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search for any Pokemon")
                
                List {
                    ForEach(homeDataStore.names.filter {
                        self.searchText.isEmpty ? true : $0.localizedCaseInsensitiveContains(self.searchText)
                    }, id: \.self) { name in
                        NavigationLink(destination: DetailView(name: name)) {
                            Text(name)
                        }
                    }
                }
            }
            .navigationBarTitle("Pokemon")
        }
        .accentColor(.white)
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
