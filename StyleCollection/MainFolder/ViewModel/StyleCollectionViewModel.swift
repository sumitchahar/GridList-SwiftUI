//
//  StyleCollectionViewModel.swift
//  StyleCollection
//
//  Created by Sumit on 29/06/24.
//

import Foundation

class StyleCollectionViewModel:ObservableObject {
    
     @Published var itemsDetails = [ItemsDetails]()
     
    init() {
        guard let feedsUrl = Bundle.main.url(forResource: "JsonFile", withExtension: "json") else {
            return
        }
        let decoder = JSONDecoder()
        //decoder.keyDecodingStrategy = .convertFromSnakeCase
        guard let data = try? Data(contentsOf: feedsUrl) else {
            return
        }
        
        do {
            self.itemsDetails = try decoder.decode([ItemsDetails].self, from: data)
        } catch {
            print(error)
        }
    }
    

    
  }
