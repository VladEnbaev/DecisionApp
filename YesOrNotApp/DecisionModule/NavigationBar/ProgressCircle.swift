//
//  ProgressCircle.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 26.06.2023.
//

import SwiftUI

struct ProgressCircle: View {
    let yesPercent : Double
    let size : CGFloat
    private let lineMultiplier : CGFloat = 23/220
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.redPrimary, lineWidth: lineMultiplier * size )
                .frame(width: size, height: size)
            
            Circle()
                .trim(from: 0, to: yesPercent / 100)
                .stroke(
                    style:
                        StrokeStyle(
                            lineWidth: lineMultiplier * size,
                            lineCap: .round,
                            lineJoin: .miter,
                            miterLimit: 10
                        )
                )
                .foregroundColor(.greenPrimary)
                .frame(width: size, height: size)
                .rotationEffect(.degrees(90))
        }
    }
}

struct ProgressCircle_Previews: PreviewProvider {
    
    static var previews: some View {
        ProgressCircle(yesPercent: 50, size: 200)
    }
}
