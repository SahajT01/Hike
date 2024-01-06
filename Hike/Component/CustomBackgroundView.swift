//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Sahaj Totla on 10/15/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            //MARK: 3. DEPTH
            
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:10)
            
            //MARK: 2. LIGHT
            
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:2)
                .opacity(0.8)
            
            
            //MARK: 1. SURFACE
            
            LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
