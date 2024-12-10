//
//  ContentView.swift
//  Jungles
//
//  Created by Sonia on 21.11.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var authManager = AuthManager()


    var body: some View {
        NavigationStack{
            if authManager.isAuthenticated{
                HomeView()
                    .preferredColorScheme(.light)
            } else {
                LoginView() // Screen to log in or register
                
            }
            
        }
        .environmentObject(authManager) // Provide to all views

       
    }
}
#Preview {
    ContentView()
}
