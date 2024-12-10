//
//  ListItem.swift
//  Jungles
//
//  Created by Sonia on 02.12.2024.
//

import SwiftUI

struct PlantRow: View {
    var plant: Plant
    var body: some View {
        HStack {
            Image("greenCircle")
                .resizable()
                .frame(width: 60, height: 60)
            VStack(alignment: .leading) {
                Text("\(plant.name)")
                    .font(.headline)
               
                Text("\(plant.species)")
                    .font(.caption)
            }
            Spacer()
            Button(action: {
                        // Action to be performed on tap
                        print("Drop circle button tapped!")
                    }) {
                        Image("waterDrop")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40) // Set size to 40x40
                            .font(.system(size: 40, weight: .thin))
                    }
                    .buttonStyle(PlainButtonStyle()) // Optional: Keeps the button style minimal
        }
    }
}

#Preview {
    PlantRow(plant: plants[1])
}
