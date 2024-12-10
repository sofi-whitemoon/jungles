import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var errorMessage = ""
    @EnvironmentObject var authManager: AuthManager


    
    @AppStorage("jwtToken") private var jwtToken: String? // To save the token


    var body: some View {
        VStack {
            Spacer()
            Text("Log in").font(.largeTitle).fontWeight(.heavy).padding(.bottom, 180.0)
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle()
                    )
            SecureField("Password", text: $password)
                .padding(.bottom, 50.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Login") {
                AuthService.login(email: email, password: password) { result in
                    DispatchQueue.main.async {
                        switch result {
                        case .success(let token):
                            authManager.jwtToken = token // Set the token
                            errorMessage = ""
                        case .failure(let error):
                            errorMessage = error.localizedDescription
                        }
                    }
                }
            }
            .foregroundColor(.white) // Text color
            .padding()              // Add padding inside the button
            .frame( maxWidth: .infinity, maxHeight: 43) // Set fixed size
            .background(Color(hex: "#228C66")) // Background color from hex
            .cornerRadius(15)
            .frame(height: 40)
            Text(errorMessage)
                            .foregroundColor(.red)
                            .padding()

        }
        .padding()
        .background(Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .opacity(80)
            .ignoresSafeArea()
            
           
        )
    }
    
    
}


#Preview {
    LoginView()
}
