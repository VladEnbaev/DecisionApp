//
//  PlusButton.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 26.06.2023.
//

import SwiftUI

struct PlusButton: View {
    let color : Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            R.Images.plusImage
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(color)
        }
    }
}

struct PlusButton_Previews: PreviewProvider {
    static var previews: some View {
        PlusButton(color: .greenBackground, action: {})
    }
}



