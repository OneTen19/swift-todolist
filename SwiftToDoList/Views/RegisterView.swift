//
//  RegisterView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(.plain)
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(.plain)
                    .textInputAutocapitalization(TextInputAutocapitalization(.none))
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(.plain)
                
                TLButton(title: "Create Account", background: .green) {
                    viewModel.register()
                }
                
            }
            .offset(y: -50)

            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
