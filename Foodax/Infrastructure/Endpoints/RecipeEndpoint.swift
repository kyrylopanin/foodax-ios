//
//  RecipeViewModel.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//

import Foundation
import FoodaxAPI

typealias RecipeResult = RecipeByIdQuery.Data.Recipe

class RecipeEndpoint {
    func recipeById(id: ID, completion: @escaping (Result<RecipeResult?, Error>) -> Void) {
        Network.shared.apollo.fetch(query: RecipeByIdQuery(recipeId: id)) { result in
            switch result {
            case .success(let data):
                completion(.success(data.data?.recipe))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
