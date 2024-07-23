//
//  LoginView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                // Header
                HeaderView(title: "To Do List", subTitle: "Get things done", angle: 15, background: .pink)
                
                // Login Form
                Form {
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(.plain)
                        .textInputAutocapitalization(.none)

                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(.plain)
                    
                    TLButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                    
                }
                .offset(y: -50)
                
                
                // Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
