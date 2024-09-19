//
//  ContenteViewModel.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 19/09/2024.
//

import Foundation
import Combine
import FirebaseAuth

class ContenteViewModel: ObservableObject {
    
    @Published var userSession: FirebaseAuth.User?
    private var cancellables = Set<AnyCancellable>()
    
    init(){
        setupSubscribres()
    }
    
    private func setupSubscribres(){
        AuthService.shared.$userSession.sink{ [weak self ] userSession in
            self?.userSession = userSession
        }.store(in: &cancellables)
    }
}

