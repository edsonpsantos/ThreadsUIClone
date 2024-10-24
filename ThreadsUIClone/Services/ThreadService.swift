//
//  ThreadService.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 24/10/2024.
//

import Foundation
import Firebase
import FirebaseFirestore

struct ThreadService {
    
    static func uploadThread(_ thread: Thread) throws {
       
        try Firestore.firestore().collection("threads").addDocument(from: thread)
    }
}
