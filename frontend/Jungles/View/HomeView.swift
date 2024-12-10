//
//  HomeView.swift
//  Jungles
//
//  Created by Sonia on 10.12.2024.
//

import SwiftUI

struct HomeView: View {

    
    init() {
            let appearance = UITabBarAppearance()
            appearance.configureWithOpaqueBackground() // Makes it solid
            appearance.backgroundColor = UIColor.systemBackground // Set solid color
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance // For scrollable edges (iOS 15+)
        }
    
    var body: some View {
        
        
        TabView {
            // Home Tab
            PlantList(plants: plants)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            

            // Profile Tab
            Profile()
                .tabItem {
                    Label("Settings", systemImage: "gearshape.fill")
                }

        }
        
        .accentColor(Color(hex: "#228C66")) // Change selected tab color
    }
}

#Preview {
    HomeView()
}
