//
//  ToDoListView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    var body: some View {
        
        
        NavigationView(content: {
            NavigationLink(destination: Text("Destination")) {
                VStack{
                    
                }
                .navigationTitle("To Do List")
                .toolbar {
                    Button {
                        //
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
        })
        
        
    }
}

#Preview {
    ToDoListView(userId: "")
}
