//
//  ArgumentView.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 24.06.2023.
//

import SwiftUI

struct ArgumentCellView: View {
    let text : String
    let isArgumentFor : Bool
    @State var isPressed : Bool = false
    
    private var strokeColor: Color {
        isArgumentFor ? .greenStroke : .redStroke
    }
    
    private var backgroundColor: Color {
        if isPressed {
            return strokeColor.opacity(0.3)
        } else {
            return isArgumentFor ? .greenBackground : .redBackground
        }
    }
    
    init(text: String, isArgumentFor: Bool) {
        self.text = text
        self.isArgumentFor = isArgumentFor
        print("NEW View!!!!!!")
    }
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .padding(.top, 25)
                .padding(.bottom, 25)
            Spacer()
                
        }
        .background(backgroundColor)
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .inset(by: 1.5)
                .stroke(strokeColor, lineWidth: 3)
                .addTapGesture(action: {
                    print("YEEEEIIIII")
                }, isPressed: $isPressed)
        )
        .padding(.horizontal, 10)
        .scaleEffect(isPressed ? 0.95 : 1)
        
    }
}

struct ArgumentView_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentCellView(text: "", isArgumentFor: true)
    }
}
