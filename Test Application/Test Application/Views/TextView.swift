//
//  TextView.swift
//  Test Application
//
//  Created by William Jaros on 8/4/24.
//

import Foundation
import SwiftUI

//Creates a reusable text view.
struct TextView: View {
    var name: String
    
    var body: some View {
        Text(name)
            .font(.title)
            .foregroundColor(.black)
            .padding(10)
            .background(Color.white)
            .cornerRadius(10)
    }
}
