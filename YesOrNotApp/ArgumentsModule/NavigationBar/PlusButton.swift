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
    @State private var isTapped = false
    
    private var backgroundColor : Color {
        isTapped ? foregroundColor.opacity(0.2) : .white
    }
    
    var body: some View {
        R.Images.plusImage
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
            .onTapGesture {
                withAnimation(.linear.speed(3)) {
                    isTapped.toggle()
                }
                action()
                withAnimation(.linear.speed(3).delay(0.1)) {
                    isTapped.toggle()
                }
            }
    }
}

struct PlusButton_Previews: PreviewProvider {
    static var previews: some View {
        PlusButton(foregroundColor: .blue, action: {})
    }
}



