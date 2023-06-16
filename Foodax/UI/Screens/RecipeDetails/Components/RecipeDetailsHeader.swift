//
//  RecipeDetailsHeader.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//

import SwiftUI

struct RecipeDetailsHeader: View {
    @EnvironmentObject var viewModel: RecipeDetailsViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            AsyncImage(url: URL(string: viewModel.imageURL)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder: {
                ImagePlaceholder()
            }
            .frame(height: 140)
            .clipped()
            VStack(alignment: .leading, spacing: 16) {
                Text("RECIPE")
                    .font(.system(size: 14, weight: .medium))
                Text(viewModel.title)
                    .font(.system(size: 18, weight: .semibold))
            }
            .padding(.horizontal)
            Divider()
            HStack {
                Text(viewModel.totalTime.uppercased())
                Spacer()
                Text("\(viewModel.servings) SERVING")
                Spacer()
                Text("\(viewModel.ingredients.count) INGREDIENTS")
            }
            .font(.system(size: 16, weight: .medium))
            .padding()
        }
    }
}

struct RecipeDetailsHeader_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsHeader()
    }
}
