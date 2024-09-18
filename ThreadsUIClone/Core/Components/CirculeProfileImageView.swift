//
//  CirculeProfileImageView.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 18/09/2024.
//

import SwiftUI

struct CirculeProfileImageView: View {
    var body: some View {
        Image("person2")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CirculeProfileImageView()
}
