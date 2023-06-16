//
//  ImagePlaceholder.swift
//  Foodax
//
//  Created by Kyrylo Panin on 15.06.2023.
//

import SwiftUI

struct ImagePlaceholder: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.purple)
            Image("meal")
                .resizable()
                .frame(width: 70, height: 60)
        }
    }
}

struct ImagePlaceholder_Previews: PreviewProvider {
    static var previews: some View {
        ImagePlaceholder()
    }
}
