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
    
    private var backgroundColor: Color {
        isArgumentFor ? .greenBackground : .redBackground
    }
    
    private var strokeColor: Color {
        isArgumentFor ? .greenPrimary : .redPrimary
    }
    
    var body: some View {
        Text(text)
            .padding(.leading, 12)
            .padding(.trailing, 12)
            .padding(.top, 25)
            .padding(.bottom, 25)
            .frame(width: 180)
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
    }
}

struct ArgumentView_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentCellView(text: "Dirty", isArgumentFor: true)
    }
}
