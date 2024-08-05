//
//  ButtonView.swift
//  Test Application
//
//  Created by William Jaros on 8/3/24.
//

import Foundation
import SwiftUI

//Creates a reusable button view.
struct ButtonView: View {
    var name: String
    var action: (() -> Void)
    
    var body: some View {
        Button(action: action) {
            TextView(name: name)
        }.padding(16)
    }
}
