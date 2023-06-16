//
//  SearchRecipeViewModel.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//

import Combine
import FoodaxAPI

class SearchRecipeViewModel: ObservableObject {
    @Published var searchQuery: String = ""
    @Published var items: [SearchRecipeByNameOrIngredientResult?] = [SearchRecipeByNameOrIngredientResult?]()
    
    let endpoint = SearchEndpoint()
    
    func searchRecipeByNameOrIngredient() {
        endpoint.searchByNameOrIngredient(query: searchQuery) { result in
            switch result {
            case .success(let data):
                print(self.searchQuery)
                if let data {
                    self.items = data
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
