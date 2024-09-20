//
//  ProfileViewModel.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 20/09/2024.
//

import Foundation
import Combine
import PhotosUI
import SwiftUI

class CurrentUserProfileViewModel: ObservableObject {
    
    @Published var currentUser: User?
    
    @Published var selectedItem: PhotosPickerItem? {
        didSet {
            Task{ try await loadImage() }
        }
    }
    
    @Published var profileImage: Image?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers(){
        UserService.shared.$currentUser.sink {[weak self] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
    
    private func loadImage() async throws{
        guard let item = selectedItem else { return }
        guard let data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage = UIImage(data: data) else { return }
        self.profileImage = Image(uiImage: uiImage)
    }
}
