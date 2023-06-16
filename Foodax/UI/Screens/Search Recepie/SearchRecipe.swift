//
//  SearchRecipe.swift
//  Foodax
//
//  Created by Kyrylo Panin on 14.06.2023.
//

import SwiftUI

struct SearchRecipe: View {
    @ObservedObject var viewModel = SearchRecipeViewModel()
    
    var body: some View {
        VStack {
            FDXSearchBar(text: $viewModel.searchQuery)
                .padding(.horizontal, 16)
            ScrollView {
                VStack {
                    ForEach(viewModel.items, id: \.?.id) { item in
                        if let item {
                            if let ingredients =  item.ingredients {
                                NavigationLink {
                                    RecipeDetails(viewModel: RecipeDetailsViewModel(id: item.id))
                                } label: {
                                    RecipeSearchItem(name: item.name ?? "", ingredients: ingredients, totalTime: item.totalTime ?? "", imageURL: item.mainImage ?? "")
                                    
                                }
                                .foregroundColor(.black)
                            }
                            
                        }
                        
                    }
                }
                .padding(.horizontal, 16)
            }
            .padding(.top, 16)
            Spacer()
        }
        .padding([.top], 16)
        .onSubmit {
            viewModel.searchRecipeByNameOrIngredient()
        }
    }
}

struct SearchRecipe_Previews: PreviewProvider {
    static var previews: some View {
        SearchRecipe()
    }
}
