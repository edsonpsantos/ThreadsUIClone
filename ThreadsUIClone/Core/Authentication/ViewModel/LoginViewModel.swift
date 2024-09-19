//
//  LoginViewModel.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 19/09/2024.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    
    @Published var email = ""
    @Published var password = ""

    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
