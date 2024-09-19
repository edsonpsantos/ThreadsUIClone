//
//  ContentView.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 17/09/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContenteViewModel()
    
    var body: some View {
        Group{
            if viewModel.userSession != nil {
                ThreadsTabView()
            }else{
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
