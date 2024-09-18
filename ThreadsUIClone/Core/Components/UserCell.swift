//
//  UserCell.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 18/09/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            CirculeProfileImageView()
            
            VStack(alignment: .leading){
                Text("marisamax99")
                    .fontWeight(.semibold)
                
                Text("Marisa Maxwell")
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
