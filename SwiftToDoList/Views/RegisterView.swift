//
//  RegisterView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/22/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(.plain)
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(.plain)
                    .textInputAutocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.plain)
                
                TLButton(title: "Create Account", background: .green) {
                    //
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
