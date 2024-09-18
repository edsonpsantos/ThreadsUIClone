//
//  ProfileThreadFilter.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 18/09/2024.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable {
    case threads
    case replies
//    case likes
    
    var title: String {
        switch self {
        case .threads: return "Threads"
        case .replies: return "Replies"
//        case .likes: return " Likes"
        }
    }
    
    var id: Int{ return self.rawValue }
    
}
