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
    
    @State var moves: [String] = []
    @State var movesMethodLearned: [String] = []
    @State var levelMoveLearned: [String] = []
    
    @State var movesObject: [Moves] = []
    
    @State var species: Species?
    
    @State var types: Types?
    
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    let firstNineTypeIcons = ["normal_icon", "fire_icon", "water_icon", "electric_icon", "grass_icon", "ice_icon", "fighting_icon", "poison_icon", "ground_icon"]
    let secondNineTypeIcons = ["flying_icon", "psychic_icon", "bug_icon", "rock_icon", "ghost_icon", "dragon_icon", "dark_icon", "steel_icon", "fairy_icon"]
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            // BACKGROUND
            Rectangle()
                .fill(Color("\(typesArray.last ?? "normal")Background"))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                // TOP VIEW
                HStack(alignment: .center) {
                    Image("\(details?.id ?? 0)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150, alignment: .center)
                        .padding(.leading, 20)
                        .padding(.trailing, 20)
                    //UrlImageView(urlString: details?.sprites?.frontDefault ?? "")
                    
                    VStack(alignment: .leading) {
                        Text("#\(details?.id ?? 0)")
                            .padding(.bottom)
                            .foregroundColor(.white)
                        
                        Text(name.capitalizingFirstLetter())
                            .padding(.bottom)
                            .foregroundColor(.white)
                        
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
                
                // SEGMENTED BUTTONS
                HStack(spacing: 50) {
                    Button(action: {
                        self.selected = 0
                    }) {
                        Text("About")
                    }
                    .foregroundColor(self.selected == 0 ? .white : .gray)
                    
                    Button(action: {
                        self.selected = 1
                    }) {
                        Text("Stats")
                    }
                    .foregroundColor(self.selected == 1 ? .white : .gray)
                    
                    Button(action: {
                        self.selected = 2
                    }) {
                        Text("Moves")
                    }
                    .foregroundColor(self.selected == 2 ? .white : .gray)
                    
                    Button(action: {
                        self.selected = 3
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
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Group {
                                Text(getFlavorText())
                                    .foregroundColor(.gray)
                                    .lineLimit(nil)
                                    .font(.system(size: 15))
                                    .padding(.top, 10)
                                
                                Text("Pokedex Data")
                                    .foregroundColor(Color("\(typesArray.last ?? "normal")"))
                                
                                // SPECIES
                                HStack {
                                    Text("Species")
                                        .frame(width: 105, height: 20, alignment: .leading)
                                        .foregroundColor(.black)
                                    
                                    Text(getGenus())
                                        .foregroundColor(.gray)
                                }
                                
                                // HEIGHT
                                HStack {
                                    Text("Height")
                                        .frame(width: 105, height: 20, alignment: .leading)
                                        .foregroundColor(.black)
                                    
                                    Text("\(calculateHeight()) in")
                                        .foregroundColor(.gray)
                                }
                                
                                // WEIGHT
                                HStack {
                                    Text("Weight")
                                        .frame(width: 105, height: 20, alignment: .leading)
                                        .foregroundColor(.black)
                                    
                                    Text("\(calculateWeight()) lbs")
                                        .foregroundColor(.gray)
                                }
                                
                                // HABITAT
                                HStack {
                                    Text("Habitat")
                                        .frame(width: 105, height: 20, alignment: .leading)
                                        .foregroundColor(.black)
                                    
                                    Text("\(species?.habitat?.name ?? "")")
                                        .foregroundColor(.gray)
                                }
                                
                                // ABILITIES
                                HStack {
                                    Text("Abilities")
                                        .frame(width: 105, height: 20, alignment: .leading)
                                        .foregroundColor(.black)
                                    
                                    if details?.abilities?.count == 1 {
                                        Text(details?.abilities?.first?.ability?.name ?? "")
                                            .foregroundColor(.gray)
                                    } else if details?.abilities?.count ?? 0 > 1 {
                                        Text("\(details?.abilities?.last?.ability?.name ?? "") and \(details?.abilities?.first?.ability?.name ?? "")")
                                            .foregroundColor(.gray)
                                    }
                                }
                                
                                // WEAKNESSES
                                HStack {
                                    Text("Weaknesses")
                                        .frame(width: 105, height: 20, alignment: .leading)
                                        .foregroundColor(.black)
                                    
                                    if typesArray.count == 1 {
                                        ForEach(weaknessManager.getWeaknessesForSingleType(type1: typesArray.first ?? "normal"), id: \.self) { weaknesses in
                                            Image("\(weaknesses)_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            
                                        }
                                        
                                    } else if typesArray.count == 2 {
                                        ForEach(weaknessManager.getWeaknessesForDualTypes(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal"), id: \.self) { weaknesses in
                                            Image("\(weaknesses)_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                        }
                                    }
                                }
                            }
                            
                            Text("Training")
                                .foregroundColor(Color("\(typesArray.last ?? "normal")"))
                            
                            // BASE EXP
                            HStack {
                                Text("Base Exp")
                                    .frame(width: 105, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                Text("\(details?.baseExperience ?? 0)")
                                    .foregroundColor(.gray)
                            }
                            
                            // GROWTH RATE
                            HStack {
                                Text("Growth Rate")
                                    .frame(width: 105, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                Text("\(species?.growth_rate?.name ?? "")")
                                    .foregroundColor(.gray)
                            }
                            
                            // CAPTURE RATE
                            HStack {
                                Text("Capture Rate")
                                    .frame(width: 105, height: 20, alignment: .leading)
                                    .foregroundColor(.black)
                                
                                Text("\(species?.capture_rate ?? 0)")
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        .padding(.leading, 10)
                    }
                } else if selected == 1 {
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: screenWidth, height: (screenHeight * (3/4)))
                            .foregroundColor(.white)
                            .edgesIgnoringSafeArea(.bottom)
                        
                        VStack(alignment: .leading, spacing: 20) {
                            // STATS GRAPHS
                            Group {
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
                            
                            // TYPE DEFENSES
                            Text("Type Defenses")
                                .foregroundColor(Color("\(typesArray.last ?? "normal")"))
                            Text("Effectiveness of each type on \(name.capitalizingFirstLetter())")
                                .foregroundColor(.gray)
                            
                            if typesArray.count == 1 {
                                HStack(spacing: 15) {
                                    Group {
                                        VStack {
                                            Image("normal_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[0])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("fire_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[1])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("water_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[2])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("electric_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[3])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("grass_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[4])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ice_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[5])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("fighting_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[6])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("poison_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[7])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ground_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[8])")
                                            .foregroundColor(.black)
                                        }
                                    }
                                    
                                }
                                
                                HStack(spacing: 15) {
                                    Group {
                                        VStack {
                                            Image("flying_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[0])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("psychic_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[1])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("bug_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[2])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("rock_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[3])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ghost_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[4])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("dragon_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[5])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ghost_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[6])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("steel_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[7])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("fairy_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForSingleType(type1: typesArray.first ?? "normal")[8])")
                                            .foregroundColor(.black)
                                        }
                                    }
                                }
                            } else if typesArray.count == 2 {
                                HStack(spacing: 15) {
                                    Group {
                                        VStack {
                                            Image("normal_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[0])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("fire_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[1])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("water_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[2])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("electric_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[3])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("grass_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[4])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ice_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[5])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("fighting_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[6])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("poison_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[7])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ground_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateFirstTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[8])")
                                            .foregroundColor(.black)
                                        }
                                    }
                                    
                                }
                                
                                HStack(spacing: 15) {
                                    Group {
                                        VStack {
                                            Image("flying_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[0])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("psychic_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[1])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("bug_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[2])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("rock_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[3])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ghost_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[4])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("dragon_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[5])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("ghost_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[6])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("steel_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[7])")
                                            .foregroundColor(.black)
                                        }
                                        VStack {
                                            Image("fairy_icon")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 30, height: 30, alignment: .center)
                                            Text("\(weaknessManager.calculateSecondTypeDefensesForDualType(type1: typesArray.last ?? "normal", type2: typesArray.first ?? "normal")[8])")
                                            .foregroundColor(.black)
                                        }
                                    }
                                }
                            }
                            
                        }
                        .padding(.leading, 10)
                    }
                } else if selected == 2 {
                    ZStack(alignment: .topLeading) {
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: screenWidth, height: (screenHeight * (3/4)))
                            .foregroundColor(.white)
                            .edgesIgnoringSafeArea(.bottom)
                        
                        ScrollView {
                            VStack {
//                                ForEach(, id: \.self) { moves in
//                                    Text("\(moves)")
//                                }
                                Text("")
                            }
                        }
//                        HStack {
//                            VStack {
//                                ForEach(moves, id: \.self) { moves in
//                                    Text("\(moves)")
//                                }
//                            }
//                            VStack {
//                                ForEach(movesMethodLearned, id: \.self) { method in
//                                    Text("\(method)")
//                                }
//                            }
//                            VStack {
//                                ForEach(levelMoveLearned, id: \.self) { level in
//                                    Text("\(level)")
//                                }
//                            }
//                        }
                        
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
                self.getMoves()
            }
            self.networkManager.getSpecies(url: "https://pokeapi.co/api/v2/pokemon-species/\(self.name)") { (species) in
                self.species = species
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
    
    func getMoves() {
        
        var levels: [Int] = []
        var versionGroupDetails: [Version_group_details] = []
        
        for move in details?.moves ?? [] {
            //moves.append(move.move?.name ?? "")
            versionGroupDetails.append(contentsOf: move.version_group_details ?? [])
            
        }
        
        for details in versionGroupDetails {

            if details.move_learn_method?.name == "level-up" && details.version_group?.name == "sun-moon" {

                print(details.level_learned_at)
            }

        }
        
        levelMoveLearned = levels.map { String($0) }
        
        //print(moves.count)
        //print(movesMethodLearned.count)
        //print(levels.count)
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

//
//ForEach(weaknessManager.calculateTypeDefensesForSingleType(type1: typesArray.first ?? "normal"), id: \.self) { q in
//
//    VStack {
//        ForEach(q.map{$0.key}, id: \.self) { w in
//            Image("\(w)")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 30, height: 30, alignment: .center)
//        }
//
//        ForEach(q.map{$0.value}, id: \.self) { w in
//            Text("\(w)")
//        }
//    }
//}
