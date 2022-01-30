//
//  RecipeModel.swift
//  Module2Lesson7
//
//  Created by Anand Narayan on 2022-01-30.
//

import Foundation

class RecipeModel {
    var recipes:[Recipe]
    
    init() {
        recipes = [Recipe]()

        recipes.append(Recipe(name: "Spagetti", cuisine: "Italian"))
        recipes.append(Recipe(name: "Sushi", cuisine: "Japaneese"))
    }
}
