//
//  IngredientView.swift
//  Test Application
//
//  Created by William Jaros on 8/3/24.
//

import Foundation
import SwiftUI

//Creates a reusable igredient view.
struct IngredientView: View {
    var measurement: String
    var ingredient: String
    
    var body: some View {
        HStack {
            TextView(name: measurement)
            TextView(name: ingredient)
            Spacer()
        }
    }
}
