//
//  UrlImageView.swift
//  Pokedex
//
//  Created by Aaron Treinish on 4/28/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import SwiftUI

struct UrlImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    init(urlString: String?) {
        imageLoader = ImageLoader(urlString: urlString)
    }
    
    var body: some View {
        Image(uiImage: imageLoader.image ?? UrlImageView.defaultImage!)
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200, alignment: .center)
        
    }
    
    static var defaultImage = UIImage(named: "default pokedex image")
}

struct UrlImageView_Previews: PreviewProvider {
    static var previews: some View {
        UrlImageView(urlString: nil)
    }
}
