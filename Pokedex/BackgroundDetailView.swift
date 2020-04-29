//
//  BackgroundDetailView.swift
//  Pokedex
//
//  Created by Aaron Treinish on 4/29/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import SwiftUI

struct BackgroundDetailView: View {
    var body: some View {
        Rectangle()
            .fill(Color("Poison"))
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundDetailView()
    }
}
