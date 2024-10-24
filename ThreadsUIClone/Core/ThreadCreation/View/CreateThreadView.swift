//
//  CreateThreadView.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 18/09/2024.
//

import SwiftUI

struct CreateThreadView: View {
    
    @State private var caption = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack(alignment: .top){
                    CirculeProfileImageView(user: nil, size: .small)
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("marisamax99")
                            .fontWeight(.semibold)
                        
                        TextField("Start a thread...", text: $caption, axis: .vertical)
                    }
                    .font(.footnote)
                    
                    Spacer()
                    
                    if  !caption.isEmpty{
                        Button {
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width:12, height:12)
                                .foregroundColor(.gray)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel"){
                        dismiss()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Post"){
                        
                    }
                    .opacity(caption.isEmpty ? 0.5 : 1.0)
                    .disabled(caption.isEmpty)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CreateThreadView()
}
