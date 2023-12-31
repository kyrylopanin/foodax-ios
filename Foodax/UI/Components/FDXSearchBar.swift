//
//  FDXSearchBar.swift
//  Foodax
//
//  Created by Kyrylo Panin on 14.06.2023.
//

import SwiftUI

struct FDXSearchBar: View {
    @Binding var text: String
    var cancelAction: () -> ()
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            HStack(spacing: 0) {
                TextField("Search by name or ingredients", text: $text)
                if !text.isEmpty {
                    Button {
                        text = ""
                    } label: {
                        Image(systemName: "multiply.circle.fill")
                    }
                    .foregroundColor(.gray)
                }
            }
            Spacer()
            Button("Cancel", action: {
                cancelAction()
            })
            .foregroundColor(.gray)
            .font(.system(size: 16, weight: .medium))
            .padding(.leading, 16)
            
        }
    }
}

struct FDXSearchBar_Previews: PreviewProvider {
    static var previews: some View {
        FDXSearchBar(text: .constant(""), cancelAction: {
            
        })
    }
}
