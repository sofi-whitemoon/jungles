import SwiftUI

struct Profile: View {
    @EnvironmentObject var authManager: AuthManager
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            // Profile Picture
            
            // User Name
            Text("Profile")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 120.0)
            
            // User Email
            Text("Sonia")
                .font(.subheadline)
            
            Spacer()
            
            // Logout Button
            Button("Logout") {
                authManager.logout() // Clear the token and update the state
                
            }
            .padding()
            .foregroundColor(Color.red)
            .frame(maxWidth: .infinity)
            
            // Divider
            Divider()
                .padding(.top, 20)
            
            // Additional Info
            VStack(alignment: .leading, spacing: 10) {
                // Add more profile details here if needed
            }
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            Image("background2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .opacity(80)
                .ignoresSafeArea()
        )
        
    }
    
    
}


#Preview {
    Profile()
}
