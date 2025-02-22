//
//  HeaderView.swift
//  SwiftToDoList
//
//  Created by OneTen on 7/23/24.
//

import SwiftUI

struct HeaderView: View {
    let title : String
    let subTitle : String
    let angle : Double
    let background : Color
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
            }
            .padding(.top, 80)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subTitle: "SubTitle", angle: 15, background: .blue)
}
