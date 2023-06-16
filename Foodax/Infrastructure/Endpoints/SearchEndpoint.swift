//
//  SearchEndpoint.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//

import Foundation
import FoodaxAPI


typealias SearchRecipeByNameOrIngredientResult = SearchRecipeByNameOrIngredientQuery.Data.SearchRecipeByNameOrIngredient.OnPlan

class SearchEndpoint {
    func searchByNameOrIngredient(query: String, completion: @escaping (Result<[SearchRecipeByNameOrIngredientResult?]?, Error>) -> Void) {
        Network.shared.apollo.fetch(query: SearchRecipeByNameOrIngredientQuery(query: .init(stringLiteral: query))) { result in
            switch result {
            case .success(let data):
                completion(.success(data.data?.searchRecipeByNameOrIngredient?.onPlan))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
