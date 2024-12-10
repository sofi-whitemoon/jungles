//
//  WaterScale.swift
//  Jungles
//
//  Created by Sonia on 23.11.2024.
//

import SwiftUI

struct WaterScale: View {
    var plant: Plant
    var body: some View {
        HStack {
            WaterVisualisation(plant: plant)
            VStack(alignment: .leading, spacing: 75.0) {
                Text("-Good")
                Text("-Need Water")
                Text("-Probably dead")
                
                    
            }
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    WaterScale(plant: plants[1])
}
