//
//  AuthService.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 19/09/2024.
//

import Firebase
import FirebaseAuth


class AuthService {

    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Created user with uid \(result.user.uid)")
//            let changeRequest = user.profileChangeRequest()
//            changeRequest.displayName = fullname
//            changeRequest.username = username
//            try changeRequest.commit()
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
}
