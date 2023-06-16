//
//  FoodaxApp.swift
//  Foodax
//
//  Created by Kyrylo Panin on 14.06.2023.
//

import SwiftUI

@main
struct FoodaxApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                SearchRecipe()
            }
        }
    }
}
