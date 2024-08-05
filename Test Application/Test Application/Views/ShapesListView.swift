//
//  MealsListView.swift
//  Test Application
//
//  Created by William Jaros on 8/2/24.
//

import SwiftUI

struct MealsListView: View {
    //Array that holds all meals to be displayed in the view
    @State var mealsArray: [Meal] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationStack {
                    List {
                        ForEach(0..<mealsArray.count, id: \.self) { index in
                            HStack {
                                let meal = mealsArray[index]
                                MealListView(name: meal.strMeal, imageURL: meal.strMealThumb, meal: meal)
                            }
                        }
                    }
                    .background(.white)
                }
            Spacer()
                .frame(height:16)
            }
        }.task {
            do {
                //Calls the API to get the data to populate the view.
                let meals = try await NetworkService.shared.getMeals()
                mealsArray = meals
            } catch let error {
                //Handle error from API
                print("API failed: \(error)")
            }
        }
    }
}

#Preview {
    MealsListView()
}
