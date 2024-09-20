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
    
    @Published var currentUser: User?
    
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
        self.currentUser = user
    }
    
    static func fetchUsers() async throws -> [User] {
        guard let currentUId = Auth.auth().currentUser?.uid else { return [] }
        let snapshot = try await Firestore.firestore().collection("users").getDocuments()
        let users = snapshot.documents.compactMap({try? $0.data(as: User.self)})
        
        //List all user except to user logged
        return users.filter({$0.id != currentUId})
    }
    
    func reset() {
        self.currentUser = nil
    }
}
