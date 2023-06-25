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
            VStack {
                ForEach(arguments, id: \.id) { argument in
                    ArgumentView(
                        text: argument.name,
                        backgroundColor: argument.isArgumentFor ? .greenBackground : .redBackground
                    )
                }
            }

        }
    }
}

struct ArgumentList_Previews: PreviewProvider {
    static var previews: some View {
        ArgumentsList(arguments: Argument.previewArgumentsFor)
    }
}
