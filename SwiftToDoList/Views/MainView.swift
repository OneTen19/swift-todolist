//
//  MainView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        } else {
            LoginView()
        }
        
    }
}

#Preview {
    MainView()
}
