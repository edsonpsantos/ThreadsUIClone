//
//  CreateThreadViewModel.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 24/10/2024.
//

import Foundation
import FirebaseAuth
import Firebase

class CreateThreadViewModel: ObservableObject {
    
    func uploadThread(caption: String) async throws  {
        
        guard let uid = Auth.auth().currentUser?.uid else { return }
        print(caption)
        let thread = Thread(ownerUid: uid, caption: caption, timeStamp: Timestamp(), likes: 0)
        try  ThreadService.uploadThread(thread)
    }
}


