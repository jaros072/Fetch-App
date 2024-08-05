//
//  MealsDto.swift
//  Test Application
//
//  Created by William Jaros on 8/2/24.
//

import Foundation

struct MealsDto: Decodable {
    let meals: [Meal]
}

struct Meal: Decodable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}
