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
            LazyVStack {
                ForEach(0..<arguments.count) { index in
                    ArgumentView(
                        text: arguments[index].name,
                        backgroundColor: arguments[index].isArgumentFor ? .greenBackground : .redBackground
                    )
                }
            }
        }
        .padding(EdgeInsets())
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
        ArgumentsList(arguments: Argument.previewArgumentsFor)
    }
}
