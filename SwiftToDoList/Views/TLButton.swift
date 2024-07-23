//
//  TLButton.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/23/24.
//

import SwiftUI

struct TLButton: View {
    let title : String
    let background : Color
    let action : () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(background)
                
                Text(title)
                    .foregroundStyle(.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", background: .pink) {
        //
    }
}
