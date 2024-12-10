//
//  PlantList.swift
//  Jungles
//
//  Created by Sonia on 02.12.2024.
//

import SwiftUI

struct PlantList: View {
    @State private var showingProfile = false
    @State var plants: [Plant]

        var plantsNeedingWater: [Plant] {
            plants.filter { $0.needsWatering() }
        }

        var plantsNotNeedingWater: [Plant] {
            plants.filter { !$0.needsWatering() }
        }

        var body: some View {
            NavigationView {
                List {
                    if !plantsNeedingWater.isEmpty {
                        Section(header: Text("Need Watering")) {
                            ForEach(plantsNeedingWater) { plant in
                                ZStack {
                                    PlantRow(plant: plant)
                                    NavigationLink(destination: PlantDetails(plant: plant), label: {}
                                    ).opacity(0)
                                }
                            }
                        }
                    }

                    if !plantsNotNeedingWater.isEmpty {
                        Section(header: Text("Doesn't Need Watering")) {
                            ForEach(plantsNotNeedingWater) { plant in
                                ZStack {
                                    PlantRow(plant: plant)
                                    NavigationLink(destination: PlantDetails(plant: plant), label: {}
                                    ).opacity(0)
                                }
                            }
                        }
                        
                    }
                }
                
                .listStyle(.plain)
                .navigationTitle("My Plants")
                .toolbar {
                                Button {
                                    showingProfile.toggle()
                                } label: {
                                    Label("User Profile", systemImage: "plus")
                                }
                            }
                            .sheet(isPresented: $showingProfile) {
                                AddPlant()
                            }
                    
                   
                
            }
            
    }
    
}


#Preview {
    PlantList(plants: plants)
}
