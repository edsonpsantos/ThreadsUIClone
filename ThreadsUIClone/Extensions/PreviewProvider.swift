//
//  PreviewProvider.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 20/09/2024.
//

import SwiftUI

extension PreviewProvider{
    
    static var dev: DeveloperPreview{
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullname: "Marisa Maxxwell", email: "marisamaxx@email.com", username: "marisa_maxxwell")
}
