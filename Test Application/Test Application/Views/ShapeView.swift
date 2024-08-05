//
//  MealListView.swift
//  Test Application
//
//  Created by William Jaros on 8/3/24.
//

import Foundation
import SwiftUI

struct MealListView: View {
    var name: String
    var imageURL: String
    var meal: Meal
    
    var body: some View {
        NavigationLink(destination: MealDetailView(id: meal.idMeal)) {
            AsyncImage(url: URL(string: imageURL)) { image in
                image.resizable()
            } placeholder: {
                Color.white
            }
            .frame(width: 100, height: 100)
            .clipShape(.rect(cornerRadius: 25))
            .padding(8)
            TextView(name: name)
        }
    }
}
