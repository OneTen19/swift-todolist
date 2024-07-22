//
//  SwiftToDoListApp.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI
import FirebaseCore

@main
struct SwiftToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
