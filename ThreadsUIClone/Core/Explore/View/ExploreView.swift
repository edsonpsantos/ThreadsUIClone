//
//  ExploreView.swift
//  ThreadsUIClone
//
//  Created by EDSON SANTOS on 18/09/2024.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                LazyVStack{
                    ForEach(0 ... 10, id: \.self){ user in
                        VStack {
                            UserCell()
     
                            Divider()
                        }
                        .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}
