//
//  ToDoListViewViewModel.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import FirebaseFirestore
import Foundation

class ToDoListViewViewModel : ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
    
}
