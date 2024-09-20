//
//  ProfileViewModel.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 20/09/2024.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
    
    @Published var currentUser: User?
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        UserService.shared.$currentUsers.sink {[weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
}
