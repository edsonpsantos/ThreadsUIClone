//
//  ProfileHeaderView.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 20/09/2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    var user: User?
    
    init(user: User?) {
        self.user = user
    }
    var body: some View {
        HStack(alignment: .top){
            //Bio and stas
            VStack(alignment:.leading, spacing: 12) {
                
                //Fullname and Username
                VStack(alignment:.leading, spacing: 4){
                    Text(user?.fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    
                    Text(user?.username ?? "")
                        .font(.subheadline)
                }
                
                //If don't have any info in bio don't mhave to show some unecessary space on screen
                if let bio = user?.bio{
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            CirculeProfileImageView(user: user,size: .medium)
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: dev.user)
    }
}
