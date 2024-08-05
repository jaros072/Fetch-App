//
//  MealDetailView.swift
//  Test Application
//
//  Created by William Jaros on 8/3/24.
//

import Foundation
import SwiftUI

struct MealDetailView: View {
    @State var id: String
    @State var mealDetails: MealDetails?
    
    var body: some View {
        ScrollView {
            VStack {
                if let _mealDetails = mealDetails {
                    TextView(name: _mealDetails.strMeal, font: .largeTitle)
                    TextView(name: "Ingredients", font: .largeTitle)
                    
                    if let _mealDetails = mealDetails {
                        let ingredients = _mealDetails.ingredients
                        let measurements = _mealDetails.measurements
                        ForEach(0..<_mealDetails.ingredients.count, id: \.self) { index in
                            HStack {
                                let measurement = measurements[index]
                                let ingredient = ingredients[index]
                                IngredientView(measurement: measurement, ingredient: ingredient)
                            }
                        }
                    }
                    
                    TextView(name: "Instructions", font: .largeTitle)
                    TextView(name: _mealDetails.strInstructions)
                }
            }
        }.task {
            do {
                //Calls the API to get the data to populate the view.
                let meal = try await NetworkService.shared.getMeals(id: id)
                mealDetails = meal
            } catch let error {
                //Handle error from API
                print("API failed: \(error)")
            }
        }
    }
}
