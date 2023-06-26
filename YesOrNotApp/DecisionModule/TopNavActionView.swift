//
//  TopNavActionView.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 26.06.2023.
//

import SwiftUI

struct TopNavActionView: View {
    var height : CGFloat
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                PlusButton(color: .greenPrimary, action: {})
                Text("Should I go to Boris's party?")
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                PlusButton(color: .redPrimary, action: {})
            }
            Spacer()
            Divider()
        }
        .frame(width: UIScreen.main.bounds.width, height: height)
        .background(Color.background)
    }
}

struct TopNavActionView_Previews: PreviewProvider {
    static var previews: some View {
        TopNavActionView(height: 30)
    }
}


