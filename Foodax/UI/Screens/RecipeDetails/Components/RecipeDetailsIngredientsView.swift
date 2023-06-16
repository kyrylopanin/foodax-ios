//
//  RecipeDetailsIngredientsView.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//

import SwiftUI

struct RecipeDetailsIngredientsView: View {
    @EnvironmentObject var viewModel: RecipeDetailsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Ingredients")
                .font(.system(size: 18, weight: .semibold))
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                ForEach(viewModel.ingredients, id: \.?.name) { item in
                    HStack {
                        if let item {
                            Circle()
                                .frame(width: 14, height: 14)
                                .foregroundColor(Color("primary"))
                            Text(item.name ?? "")
                        }
                        
                    }
                }
            }
        }
    }
}

struct RecipeDetailsIngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsIngredientsView()
    }
}
