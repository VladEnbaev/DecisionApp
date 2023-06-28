//
//  ArgumentList.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 24.06.2023.
//

import SwiftUI

struct ArgumentsList: View {
    let arguments : [Argument]
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 20) {
                ForEach(arguments, id: \.id) { argument in
                    ArgumentCellView(
                        text: argument.name,
                        isArgumentFor: argument.isArgumentFor
                    )
                }
            }
        }
        .padding(EdgeInsets(.zero))
        //        .gesture(
        //           DragGesture().onChanged { value in
        //              if value.translation.height > 0 {
        //                 print("Scroll down")
        //              } else {
        //                 print("Scroll up")
        //              }
        //           }
        //        )
    }
}

struct ArgumentList_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentsList(arguments: Argument.previewMocArguments)
    }
}
