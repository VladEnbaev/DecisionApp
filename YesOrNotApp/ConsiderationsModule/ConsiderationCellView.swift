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
    @State var date: Date
    
    var body: some View {
        HStack(spacing: 50) {
            VStack(alignment: .leading) {
                
                Text(name)
                    .font(.system(size: 15,
                                  weight: .bold))
                    .multilineTextAlignment(.leading)
                
                ProgressLine(yesPercent: yesPercent)
                    .frame(width: 150)
                
                
            }
            VStack(alignment: .trailing){
                Spacer()
                Text(date.formatted(date: .numeric, time: .omitted))
                    .font(.system(size: 12))
                Spacer()
            }
        }
    }
}

struct ConsiderationCellView_Previews: PreviewProvider {
    static var previews: some View {
        ConsiderationCellView(yesPercent: 0.9, name: "some some somesome some some", date: Date())
    }
}
