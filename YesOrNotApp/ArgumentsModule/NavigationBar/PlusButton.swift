//
//  PlusButton.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 26.06.2023.
//

import SwiftUI


struct PlusButton: View {
    let foregroundColor: Color
    let action: () -> Void
    @State private var isPressed = false
    
    private var backgroundColor : Color {
        isPressed ? foregroundColor.opacity(0.2) : .white
    }
    
    var body: some View {
        R.Icons.plus
            .frame(width: 12, height: 12, alignment: .center)
            .foregroundColor(foregroundColor)
            .padding(6)
            .background(backgroundColor)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .inset(by: 0.1)
                    .stroke(foregroundColor,
                            lineWidth: 2)
            )
            .scaleEffect(isPressed ? 1.3 : 1)
            .onTapGesture(action: {
                action()
            }, isPressed: $isPressed)
    }
}

struct PlusButton_Previews: PreviewProvider {
    static var previews: some View {
        PlusButton(foregroundColor: .blue, action: {})
    }
}



