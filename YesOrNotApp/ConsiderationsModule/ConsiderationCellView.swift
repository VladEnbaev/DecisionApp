//
//  ConsiderationCellView.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 27.06.2023.
//

import SwiftUI

struct ConsiderationCellView: View {
    
    let yesPercent : Double
    let name: String
    @State private var showMore = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                
                Text(name)
                    .foregroundColor(.textColor)
                    .font(.system(size: 15,
                                  weight: .bold))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                
                ProgressLine(yesPercent: yesPercent)
                    .frame(width: 150)
                
                
            }
            .padding(.leading, 20)
            Spacer()
            Button {
                showMore.toggle()
            } label: {
                Image(systemName: "chevron.down")
                    .foregroundColor(.textColor)
                    .rotationEffect(.degrees(showMore ? 180 : 0))
                    .animation(.default, value: 3)
            }
            .padding(.trailing, 15)

            
        }
        .frame(width: 357, height: 76)
        .background(Color(red: 0.95, green: 0.95, blue: 0.96))
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .inset(by: 1.5)
                .stroke(Color(red: 0.77, green: 0.8, blue: 0.85), lineWidth: 3)
    )
    }
}

struct ConsiderationCellView_Previews: PreviewProvider {
    static var previews: some View {
        ConsiderationCellView(yesPercent: 0.9, name: "some some somesome some some")
    }
}
