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
    
    private var backgroundColor: Color {
        isArgumentFor ? .greenBackground : .redBackground
    }
    
    private var strokeColor: Color {
        isArgumentFor ? .greenPrimary : .redPrimary
    }
    
    var body: some View {
        HStack {
            Spacer()
            Text(text)
                .padding(.top, 25)
                .padding(.bottom, 25)
            Spacer()
                
        }
        .background(
            isArgumentFor ? Color.greenBackground : Color.redBackground
        )
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .inset(by: 1.5)
                .stroke(
                    isArgumentFor ? Color.greenStroke : Color.redStroke,
                    lineWidth: 3)
        )
        .padding(.horizontal, 10)
        .scaleEffect(isPressed ? 1.05 : 1)
        .addTapGesture(action: {
            print("YEEEEIIIII")
        }, isPressed: $isPressed)
    }
}

struct ArgumentView_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentCellView(text: "Dirty", isArgumentFor: true)
    }
}
