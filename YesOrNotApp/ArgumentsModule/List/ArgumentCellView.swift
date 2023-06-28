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
            .background(Color(red: 0.86, green: 0.94, blue: 0.85))
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .inset(by: 1.5)
                    .stroke(Color(red: 0.09, green: 0.59, blue: 0.2), lineWidth: 3)
            )
        //            .multilineTextAlignment(.center)
        //            .padding(.leading, 12)
        //            .padding(.trailing, 12)
        //            .padding(.top, 25)
        //            .padding(.bottom, 25)
        //            .frame(width: 170, alignment: .center)
        //            .background(backgroundColor)
        //            .cornerRadius(20)
        //            .overlay(
        //                RoundedRectangle(cornerRadius: 20)
        //                    .inset(by: 0.5)
        //                    .stroke(strokeColor, lineWidth: 1)
        //            )
    }
}

struct ArgumentView_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentCellView(text: "Dirty", isArgumentFor: true)
    }
}
