import SwiftUI

struct RegistrationView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    @State private var message = ""

    var body: some View {
        VStack {
            Spacer()
            Text("Registration").font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 150.0)
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
               

            SecureField("Password", text: $password)
                .padding(.bottom, 50.0)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Register") {
                AuthService.register(username: username, email: email, password: password) { result in
                    DispatchQueue.main.async {
                        switch result {
                        case .success(let response):
                            message = "Succeded"
                        case .failure(let error):
                            message = error.localizedDescription
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
            
            Text(message)
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
    RegistrationView()
}
