import Foundation

class AuthService {
    static func register(username: String, email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        let body = [
            "username": username,
            "email": email,
            "password": password
        ]
        
        NetworkManager.shared.request(endpoint: "/auth/register", method: "POST", body: body) { result in
            switch result {
            case .success(let data):
                if let response = String(data: data, encoding: .utf8) {
                    completion(.success(response))
                } else {
                    completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid response"])))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
    static func login(email: String, password: String, completion: @escaping (Result<String, Error>) -> Void) {
        let body = [
            "email": email,
            "password": password
        ]
        
        NetworkManager.shared.request(endpoint: "/auth/login", method: "POST", body: body) { result in
            switch result {
            case .success(let data):
                if let json = try? JSONSerialization.jsonObject(with: data, options: []),
                   let dict = json as? [String: Any],
                   let token = dict["token"] as? String {
                    completion(.success(token))
                } else {
                    completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid response"])))
                }
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
