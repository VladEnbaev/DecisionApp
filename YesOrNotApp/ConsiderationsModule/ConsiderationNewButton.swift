//
//  ConsiderationNewButton.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 28.06.2023.
//

import SwiftUI

struct ConsiderationNewButton: View {
    @State var isPressed = false
    @State var count = 0
    let action: () -> Void
    
    var body: some View {
        R.Icons.plus
            .resizable()
            .foregroundColor(Color.backgroundColor)
            .padding()
            .background(
                isPressed ? Color.black : Color(red: 0.16, green: 0.17, blue: 0.19)
            )
            .cornerRadius(16)
            .frame(width: 56, height: 56)
            .scaleEffect(isPressed ? 1.3 : 1)
//            .shadow(
//                color: Color(red: 0.05, green: 0.05, blue: 0.06),
//                radius: 0,
//                x: 0,
//                y: isPressed ? 8 : 0
//            )
        
            .onTapGesture(action: {
                count += 1
                print(count)
            }, isPressed: $isPressed)
    }
}

struct ConsiderationNewButton_Previews: PreviewProvider {
    static var previews: some View {
        ConsiderationNewButton(action: { } )
    }
}
