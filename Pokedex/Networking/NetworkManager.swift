//
//  NetworkManager.swift
//  Pokedex
//
//  Created by Aaron Treinish on 3/29/20.
//  Copyright © 2020 Aaron Treinish. All rights reserved.
//

import Foundation
import Combine

enum NetworkResponse:String {
    case success
    case authenticationError = "You need to be authenticated first."
    case badRequest = "Bad request"
    case outdated = "The url you requested is outdated."
    case failed = "Network request failed."
    case noData = "Response returned with no data to decode."
    case unableToDecode = "We could not decode the response."
}

enum HTTPResult<String>{
    case success
    case failure(String)
}

class NetworkManager: ObservableObject {
    
    @Published var results = [Result]()
    @Published var details: Details?
    @Published var species: Species?
    @Published var names: [String] = []
    @Published var urls: [String] = []
    @Published var types: [String] = []
    
    func getPokemon(completion: @escaping ([Result]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=721") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("Please check your network connection.")
            }
            
            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)
                switch result {
                case .success:
                    guard let responseData = data else {
                        print(NetworkResponse.noData.rawValue)
                        return
                    }
                    do {
                        print(responseData)
                        
                        let apiResponse = try JSONDecoder().decode(Pokemon.self, from: responseData)
                        DispatchQueue.main.async {
                            completion(apiResponse.results ?? [])
                        }
                    } catch {
                        print(error)
                        print(NetworkResponse.unableToDecode.rawValue)
                    }
                case .failure(let networkFailureError):
                    print(networkFailureError)
                }
            }
        }
        .resume()
    }
    
    func appendResultsData() {
        for result in results {
            names.append(result.name ?? "")
            urls.append(result.url ?? "")
        }
    }
    
    func getDetails(url: String, completion: @escaping (Details) -> ()) {
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("Please check your network connection.")
            }
            
            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)
                switch result {
                case .success:
                    guard let responseData = data else {
                        print(NetworkResponse.noData.rawValue)
                        return
                    }
                    do {
                        print(responseData)
                        
                        let apiResponse = try JSONDecoder().decode(Details.self, from: responseData)
                        DispatchQueue.main.async {
                            completion(apiResponse)
                        }
                    } catch {
                        print(error)
                        print(NetworkResponse.unableToDecode.rawValue)
                    }
                case .failure(let networkFailureError):
                    print(networkFailureError)
                }
            }
        }
        .resume()
    }
    
    func getSpecies(url: String, completion: @escaping (Species) -> ()) {
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("Please check your network connection.")
            }
            
            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)
                switch result {
                case .success:
                    guard let responseData = data else {
                        print(NetworkResponse.noData.rawValue)
                        return
                    }
                    do {
                        print(responseData)
                        
                        let apiResponse = try JSONDecoder().decode(Species.self, from: responseData)
                        DispatchQueue.main.async {
                            completion(apiResponse)
                        }
                    } catch {
                        print(error)
                        print(NetworkResponse.unableToDecode.rawValue)
                    }
                case .failure(let networkFailureError):
                    print(networkFailureError)
                }
            }
        }
        .resume()
    }
    
    func getTypes(url: String, completion: @escaping (Types) -> ()) {
        
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("Please check your network connection.")
            }
            
            if let response = response as? HTTPURLResponse {
                let result = self.handleNetworkResponse(response)
                switch result {
                case .success:
                    guard let responseData = data else {
                        print(NetworkResponse.noData.rawValue)
                        return
                    }
                    do {
                        print(responseData)
                        
                        let apiResponse = try JSONDecoder().decode(Types.self, from: responseData)
                        DispatchQueue.main.async {
                            completion(apiResponse)
                        }
                    } catch {
                        print(error)
                        print(NetworkResponse.unableToDecode.rawValue)
                    }
                case .failure(let networkFailureError):
                    print(networkFailureError)
                }
            }
        }
        .resume()
    }
    
    fileprivate func handleNetworkResponse(_ response: HTTPURLResponse) -> HTTPResult<String> {
        print(response.statusCode)
        switch response.statusCode {
        case 200...299: return .success
        case 401...500: return .failure(NetworkResponse.authenticationError.rawValue)
        case 501...599: return .failure(NetworkResponse.badRequest.rawValue)
        case 600: return .failure(NetworkResponse.outdated.rawValue)
        default: return .failure(NetworkResponse.failed.rawValue)
        }
    }
}
