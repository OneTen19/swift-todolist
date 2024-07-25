//
//  ToDoListView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        
        
        NavigationView{
            
            VStack{
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button("delete"){
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                        }
                    
                }
                .listStyle(.plain)
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
                
            }
            .sheet(isPresented: $viewModel.showingNewItemView,
                   content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
            
        }
        
        
    }
}

#Preview {
    ToDoListView(userId: "LAcKFvNx3CWPu5qc6kfkG2rvAYt1")
}
