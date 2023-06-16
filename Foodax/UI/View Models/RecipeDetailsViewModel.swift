//
//  RecipeDetailsViewModel.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//
import Combine
import FoodaxAPI

class RecipeDetailsViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var totalTime: String = ""
    @Published var servings: Int = 0
    @Published var ingredients: [RecipeResult.Ingredient?] = []
    @Published var instructions: [String?] = []
    @Published var imageURL: String = ""
    
    var id: ID
    
    init(id: ID) {
        self.id = id
    }
    
    func fetchRecipe() {
        RecipeEndpoint().recipeById(id: id) { result in
            switch result {
            case .success(let data):
                self.title = data?.name ?? ""
                self.totalTime = data?.totalTime ?? ""
                self.servings = data?.serving ?? 0
                self.ingredients = data?.ingredients ?? []
                self.instructions = data?.instructions ?? []
                self.imageURL = data?.mainImage ?? ""
            case .failure(let error):
                print(error)
            }
        }
    }
}
