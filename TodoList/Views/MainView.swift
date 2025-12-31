//
//  ContentView.swift
//  TodoList
//
//  Created by Raphael Aniceto on 17/12/25.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, viewModel.currentUserId.isEmpty{
            
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
