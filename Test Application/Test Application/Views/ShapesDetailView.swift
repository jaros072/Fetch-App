//
//  MealDetailView.swift
//  Test Application
//
//  Created by William Jaros on 8/3/24.
//

import Foundation
import SwiftUI

struct MealDetailView: View {
    //Variable that holds the current meal
    @State var id: String
    @State var mealDetails: MealDetails?
    
    var body: some View {
        ScrollView {
            VStack {
                if let _mealDetails = mealDetails {
                    TextView(name: _mealDetails.strMeal)
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
