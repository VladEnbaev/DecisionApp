//
//  ProgressLine.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 27.06.2023.
//

import SwiftUI

struct ProgressLine: View {
    @State var yesPercent : Double
    
    var body: some View {
        ProgressView(value: yesPercent, total: 1.0)
            .progressViewStyle(.linear)
            .tint(.green)
            .background(Color.red.cornerRadius(1000))
            .foregroundColor(.red)
    }
}

struct ProgressLine_Previews: PreviewProvider {
    static var previews: some View {
        ProgressLine(yesPercent: 0.2)
    }
}
