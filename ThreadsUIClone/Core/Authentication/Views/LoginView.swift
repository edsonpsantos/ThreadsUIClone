//
//  LoginView.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 17/09/2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack{
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

                }
                
                NavigationLink{
                    Text("Forgot password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.vertical)
                        .padding(.trailing, 28)
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                
                Button {
                    
                } label: {
                    Text("Login")
                        .modifier(ThreadsButtonModifier())
                }

                Spacer()
                
                Divider()
                
                NavigationLink{
                    Text("Registration View")
                } label: {
                    HStack(spacing: 3){
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }
                    .foregroundStyle(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    LoginView()
}
