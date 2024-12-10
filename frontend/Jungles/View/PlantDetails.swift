//
//  PlantDetails.swift
//  Jungles
//
//  Created by Sonia on 02.12.2024.
//

import SwiftUI

struct PlantDetails: View {
    var plant: Plant
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("\(plant.name)")
                    .font(.largeTitle)
                HStack {
                    Text("\(plant.species)")
                        .multilineTextAlignment(.leading)
                    Spacer()
                    Text("water once \(plant.wateringRecommendationDays) days")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                
                

                HStack(alignment: .top, spacing: 40.0) { //spacing is hardcoded
                    WaterScale(plant: plant)
                        .padding(.leading)
                    VStack(alignment: .leading) {
                        Text("Last watered:")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                        HStack(alignment: .bottom) {
                            Text("\(plant.daysPassedSinceLastWatered() ?? -1)")
                                .font(.system(size: 60))
                                
                            Text("days ago")
                                .padding(.bottom, 11.0) //padding here is hardcoded
                                .foregroundStyle(.secondary)

                        }
                        .padding(.leading, 40.0) //HARDCODED PADDING INSTEAD OF CENTERING
                        Spacer()
                        Button ("Water plant", action: {
                                        print("Button tapped!")
                                    }
                        )
                            .foregroundColor(.white) // Text color
                            .padding()              // Add padding inside the button
                            .frame( maxWidth: .infinity, maxHeight: 35) // Set fixed size
                            .background(Color(hex: "#228C66")) // Background color from hex
                            .cornerRadius(15)
                        
                        
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                
                Text("Care notes")
                    .font(.title3)
                    .padding(.top)
                Text("\(plant.careNotes)")
                    .font(.footnote)
                
                
                
                
                
                
            }
            .padding(.top, 200)
            .padding([.leading, .trailing], 20)
            
        }
        .background(Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .opacity(80)
            .ignoresSafeArea()
        )
        
       
       
        
    }
        
      
}

#Preview {
    PlantDetails(plant: plants[1])
}
