//
//  AuthSelectionView.swift
import SwiftUI

struct AuthSelectionView: View {
    var body: some View {
        
        VStack {
            Spacer()
            Text("Welcome to Jungles")
                .font(.largeTitle)
                .padding(.bottom, 300.0)
            
            Text("Please log in or register to continue")
                .font(.headline)
                .padding(.bottom)
            
            
            
            NavigationLink("Login", destination: LoginView())
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color(hex: "#228C66"))
                .cornerRadius(8)
            
            NavigationLink("Register", destination: RegistrationView())
                .padding()
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .background(Color(hex: "#228C66"))
                .cornerRadius(8)
            
            
        }
        .padding()
        .navigationTitle("")
        .background(
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(0.8) // Adjusted opacity
                .ignoresSafeArea()
        )
    }
    
}

#Preview {
    AuthSelectionView()
}
