//
//  ButtonView.swift
//  TodoList
//
//  Created by Raphael Aniceto on 31/12/25.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        
    }
}

#Preview {
    ButtonView(title: "Value", backgroundColor: .blue) {
        
    }
}
