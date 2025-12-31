//
//  RegisterView.swift
//  TodoList
//
//  Created by Raphael Aniceto on 20/12/25.
//

import SwiftUI

struct RegisterView: View {
    
@StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            HeaderView(title: "Register", subtitle: "Start organize you life", angle: -15, backgroundColor: .purple)
            
            Form {
                TextField("Full Name:", text: $viewModel.name)
                    .autocorrectionDisabled()
                TextField("Email Address:", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password:", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                ButtonView(title: "Register", backgroundColor: .green) {
                    viewModel.register()
                    
                }
                .padding()
                
            }
            .offset(y: -50 )
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
