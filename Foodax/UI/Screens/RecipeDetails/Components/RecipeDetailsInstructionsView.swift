//
//  RecipeDetailsInstructionsView.swift
//  Foodax
//
//  Created by Kyrylo Panin on 16.06.2023.
//

import SwiftUI

struct RecipeDetailsInstructionsView: View {
    @EnvironmentObject var viewModel: RecipeDetailsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Instructions")
                .font(.system(size: 18, weight: .semibold))
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0..<viewModel.instructions.count, id: \.self) { index in
                    let item = viewModel.instructions[index] ?? ""
                    HStack(alignment: .top) {
                        Text("\(index + 1).")
                        Text(item)
                    }
                    if viewModel.instructions.last != item {
                        Divider()
                        
                    }
                }
            }
        }
    }
}

struct RecipeDetailsInstructionsView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailsInstructionsView()
    }
}
