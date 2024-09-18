//
//  RegistrationView.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 17/09/2024.
//

import SwiftUI

struct RegistrationView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var email = ""
    @State private var password = ""

    @State private var fullname = ""
    @State private var username = ""
    
    var body: some View {
        VStack{
            Spacer()
            Image("threads-app-icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .padding()
            
            VStack{
                TextField("Enter your email", text: $email)
                    .textInputAutocapitalization(.none)
                    .modifier(ThreadsTextFieldModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())

                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())

            }
            Button {
            } label: {
                Text("Sign Up")
                    .modifier(ThreadsButtonModifier())
            }
            .padding(.vertical)

            Spacer()
            
            Divider()
            
            Button{
                dismiss()
            } label: {
                HStack(spacing: 3){
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}
