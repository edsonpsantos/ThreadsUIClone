//
//  UserService.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 20/09/2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore


class UserService {
    
    @Published var currentUsers: User?

    static let shared = UserService()
    
    
    init() {
        Task {
            try await fetchCurrentUsers()
        }
    }
    
    @MainActor
    func fetchCurrentUsers() async throws {
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let snapshot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snapshot.data(as: User.self)
        self.currentUsers = user
        print("DEBUG: User is \(user)")
    }
}
