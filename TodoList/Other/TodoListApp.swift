//
//  TodoListApp.swift
//  TodoList
//
//  Created by Raphael Aniceto on 17/12/25.
//

import SwiftUI
import FirebaseCore

@main
struct TodoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
