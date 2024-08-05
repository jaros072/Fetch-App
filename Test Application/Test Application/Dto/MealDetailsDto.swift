//
//  MealDetailsDto.swift
//  Test Application
//
//  Created by William Jaros on 8/5/24.
//

import Foundation

struct MealsDetailsDto: Decodable {
    let meals: [MealDetails]
}

struct MealDetails: Decodable {
    let idMeal: String
    let strMeal: String
    let strInstructions: String
    let strIngredient1: String?
    let strIngredient2: String?
    let strIngredient3: String?
    let strIngredient4: String?
    let strIngredient5: String?
    let strIngredient6: String?
    let strIngredient7: String?
    let strIngredient8: String?
    let strIngredient9: String?
    let strIngredient10: String?
    let strIngredient11: String?
    let strIngredient12: String?
    let strIngredient13: String?
    let strIngredient14: String?
    let strIngredient15: String?
    let strIngredient16: String?
    let strIngredient17: String?
    let strIngredient18: String?
    let strIngredient19: String?
    let strIngredient20: String?
    let strMeasure1: String?
    let strMeasure2: String?
    let strMeasure3: String?
    let strMeasure4: String?
    let strMeasure5: String?
    let strMeasure6: String?
    let strMeasure7: String?
    let strMeasure8: String?
    let strMeasure9: String?
    let strMeasure10: String?
    let strMeasure11: String?
    let strMeasure12: String?
    let strMeasure13: String?
    let strMeasure14: String?
    let strMeasure15: String?
    let strMeasure16: String?
    let strMeasure17: String?
    let strMeasure18: String?
    let strMeasure19: String?
    let strMeasure20: String?
    
    var ingredients: [String] {
        var ingredients: [String] = []
        ingredients.appendIfExists(stringToAppend: strIngredient1)
        ingredients.appendIfExists(stringToAppend: strIngredient2)
        ingredients.appendIfExists(stringToAppend: strIngredient3)
        ingredients.appendIfExists(stringToAppend: strIngredient4)
        ingredients.appendIfExists(stringToAppend: strIngredient5)
        ingredients.appendIfExists(stringToAppend: strIngredient6)
        ingredients.appendIfExists(stringToAppend: strIngredient7)
        ingredients.appendIfExists(stringToAppend: strIngredient8)
        ingredients.appendIfExists(stringToAppend: strIngredient9)
        ingredients.appendIfExists(stringToAppend: strIngredient10)
        ingredients.appendIfExists(stringToAppend: strIngredient11)
        ingredients.appendIfExists(stringToAppend: strIngredient12)
        ingredients.appendIfExists(stringToAppend: strIngredient13)
        ingredients.appendIfExists(stringToAppend: strIngredient14)
        ingredients.appendIfExists(stringToAppend: strIngredient15)
        ingredients.appendIfExists(stringToAppend: strIngredient16)
        ingredients.appendIfExists(stringToAppend: strIngredient17)
        ingredients.appendIfExists(stringToAppend: strIngredient18)
        ingredients.appendIfExists(stringToAppend: strIngredient19)
        ingredients.appendIfExists(stringToAppend: strIngredient20)
        return ingredients
    }
    
    var measurements:  [String] {
        var measurements: [String] = []
        measurements.appendIfExists(stringToAppend: strMeasure1)
        measurements.appendIfExists(stringToAppend: strMeasure2)
        measurements.appendIfExists(stringToAppend: strMeasure3)
        measurements.appendIfExists(stringToAppend: strMeasure4)
        measurements.appendIfExists(stringToAppend: strMeasure5)
        measurements.appendIfExists(stringToAppend: strMeasure6)
        measurements.appendIfExists(stringToAppend: strMeasure7)
        measurements.appendIfExists(stringToAppend: strMeasure8)
        measurements.appendIfExists(stringToAppend: strMeasure9)
        measurements.appendIfExists(stringToAppend: strMeasure10)
        measurements.appendIfExists(stringToAppend: strMeasure11)
        measurements.appendIfExists(stringToAppend: strMeasure12)
        measurements.appendIfExists(stringToAppend: strMeasure13)
        measurements.appendIfExists(stringToAppend: strMeasure14)
        measurements.appendIfExists(stringToAppend: strMeasure15)
        measurements.appendIfExists(stringToAppend: strMeasure16)
        measurements.appendIfExists(stringToAppend: strMeasure17)
        measurements.appendIfExists(stringToAppend: strMeasure18)
        measurements.appendIfExists(stringToAppend: strMeasure19)
        measurements.appendIfExists(stringToAppend: strMeasure20)
        return measurements
        
    }
    

}

extension [String] {
    mutating func appendIfExists(stringToAppend: String?) {
        if let _stringToAppend = stringToAppend, !_stringToAppend.isEmpty {
            self.append(_stringToAppend)
        }
    }
}
