//
//  RegistrationViewModel.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 19/09/2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullname: fullname, username: username)
    }
}
