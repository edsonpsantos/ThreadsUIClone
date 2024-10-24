//
//  Thread.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 24/10/2024.
//

import Foundation
import Firebase
import FirebaseFirestore

struct Thread: Identifiable, Codable {
    
    @DocumentID var threadId: String?
    let ownerUid: String
    let caption: String
    let timeStamp: Timestamp
    var likes: Int
    
    var id: String { threadId ?? NSUUID().uuidString }
    
    var user: User?
}
