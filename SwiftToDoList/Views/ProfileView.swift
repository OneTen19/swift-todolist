//
//  ProfileView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()

    var body: some View {
        
        NavigationView(content: {
            NavigationLink(destination: Text("Destination")) {
                VStack{
                    
                }
                .navigationTitle("Profile")
            }
        })
        
    }
}

#Preview {
    ProfileView()
}
