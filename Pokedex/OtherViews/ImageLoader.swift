//
//  ImageLoader.swift
//  Pokedex
//
//  Created by Aaron Treinish on 4/28/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation
import SwiftUI

class ImageLoader: ObservableObject {
    @Published var image: UIImage?
    var urlString: String?
    var imageCache = ImageCache.getImageCache()
    
    init(urlString: String?) {
        self.urlString = urlString
        loadImage()
    }
    
    func loadImage() {
        loadImageFromUrl()
    }
    
    func loadImageFromCache() -> Bool {
        guard let urlString = urlString else { return false }
        
        guard let cacheImage = imageCache.get(forKey: urlString) else { return false }
        
        image = cacheImage
        return true
    }
    
    func loadImageFromUrl() {
        guard let url = URL(string: urlString ?? "") else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                guard let loadedImage = UIImage(data: data) else { return }
                
                self.imageCache.set(forKey: self.urlString!, image: loadedImage)
                
                self.image = loadedImage
            }
        }
        task.resume()
    }
}

class ImageCache {
    var cache = NSCache<NSString, UIImage>()
    
    func get(forKey: String) -> UIImage? {
        return cache.object(forKey: NSString(string: forKey))
    }
    
    func set(forKey: String, image: UIImage) {
        cache.setObject(image, forKey: NSString(string: forKey))
    }
    
}

extension ImageCache {
    private static var imageCache = ImageCache()
    static func getImageCache() -> ImageCache {
        return imageCache
    }
}
