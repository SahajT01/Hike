//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Sahaj Totla on 1/5/24.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal,30)
            .background(
                // Condition ? A : B
                configuration.isPressed ?
                // A - User presses the button
                LinearGradient(
                    colors: [
                        .customGrayMedium,
                        .customGrayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                // B - User does not press the button
                LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                // Condition end
            )
            .cornerRadius(30)
    }
}
