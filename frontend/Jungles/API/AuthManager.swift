import SwiftUI

class AuthManager: ObservableObject {
    @AppStorage("jwtToken1") var jwtToken: String? {
        didSet {
            isAuthenticated = jwtToken != nil
        }
    }

    @Published var isAuthenticated: Bool = false

    init() {
        isAuthenticated = jwtToken != nil
    }

    func logout() {
        jwtToken = nil
    }
}
