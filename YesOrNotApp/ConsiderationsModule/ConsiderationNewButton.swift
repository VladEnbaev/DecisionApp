//
//  ConsiderationNewButton.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 28.06.2023.
//

import SwiftUI

struct ConsiderationNewButton: View {
    var body: some View {
        Button {
            
        } label: {
            R.Images.plusImage
                .resizable()
                .foregroundColor(.backgroundColor)
                .padding(.all, 16)
        }
        .frame(width: 56, height: 56)
        .background(Color(red: 0.16, green: 0.17, blue: 0.19))
        .cornerRadius(16)
    }
}

struct ConsiderationNewButton_Previews: PreviewProvider {
    static var previews: some View {
        ConsiderationNewButton()
    }
}
