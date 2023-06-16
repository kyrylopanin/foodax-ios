//
//  RecipeDetails.swift
//  Foodax
//
//  Created by Kyrylo Panin on 15.06.2023.
//

import SwiftUI
import FoodaxAPI

struct RecipeDetails: View {
    @ObservedObject private var viewModel: RecipeDetailsViewModel
    @Environment(\.dismiss) var dismiss
    
    init(viewModel: RecipeDetailsViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView {
            VStack {
                RecipeDetailsHeader()
                    .background(Color.white)
                RecipeDetailsIngredientsView()
                    .padding(16)
                    .background(Color.white)
                RecipeDetailsInstructionsView()
                    .padding([.leading, .vertical], 16)
                    .background(Color.white)
                Spacer()
            }
        }
        .background(Color.gray.opacity(0.2))
        .toolbarBackground(Color("primary"), for: ToolbarPlacement.navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(4)
                }
            }
        }
        .environmentObject(viewModel)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .onAppear {
            viewModel.fetchRecipe()
        }
    }
}

struct RecipeDetails_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetails(viewModel: RecipeDetailsViewModel(id: ID()))
    }
}
