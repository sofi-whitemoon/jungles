//
//  WaterVisualisation.swift
//  Jungles
//
//  Created by Sonia on 21.11.2024.
//

import SwiftUI

struct WaterVisualisation: View {
    var plant: Plant
    var body: some View {
        ZStack(alignment: .bottom) {
                   // Background Rounded Rectangle
                   RoundedRectangle(cornerRadius: 5)
                       .stroke(lineWidth: 2) // Optional border
                       .foregroundColor(.gray)
                       .frame(width: 10, height: 200)

                   // Filled Rectangle (70% height)
            RoundedRectangle(cornerRadius: 2)
                       .fill(LinearGradient(
                        gradient: Gradient(colors: [Color(hex: "#9F5A94"), Color(hex: "#FF409B")]),
                           startPoint: .bottom,
                           endPoint: .top
                       ))
                       .frame(width: 10, height: 200 * plant.wateringCoeficientPercentage()) // 70% height
               }
    }
}

#Preview {
    WaterVisualisation(plant: plants[1])
}
