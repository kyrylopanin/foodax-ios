//
//  RecipeSearchItem.swift
//  Foodax
//
//  Created by Kyrylo Panin on 14.06.2023.
//

import SwiftUI

struct RecipeSearchItem: View {
    var name: String
    var ingredients: [SearchRecipeByNameOrIngredientResult.Ingredient?]
    var totalTime: String
    var imageURL: String
    
    var body: some View {
        HStack(alignment: .top) {
            AsyncImage(url: URL(string: imageURL)) { image in
                image.resizable()
                    .scaledToFill()
            } placeholder: {
                ImagePlaceholder()
            }
            .cornerRadius(10)
            .frame(width: 120, height: 120)
            .clipped()
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 18, weight: .semibold))
                    .lineLimit(1)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(ingredients, id: \.?.name) { item in
                            Text(item?.name ?? "")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 2)
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                    }
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("🕦 \(totalTime)")
                    Text("🥒 \(ingredients.count) ingredients")
                }
                .font(.system(size: 16, weight: .medium))
                .padding(.top, 8)
            }
            
            Spacer()
        }
    }
}

struct RecipeSearchItem_Previews: PreviewProvider {
    static var previews: some View {
        RecipeSearchItem(name: "", ingredients: [], totalTime: "", imageURL: "")
    }
}
