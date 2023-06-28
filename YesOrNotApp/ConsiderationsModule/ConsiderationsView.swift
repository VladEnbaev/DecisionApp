//
//  ConsiderationView.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 27.06.2023.
//

import SwiftUI

struct ConsiderationsView: View {
    
    let considerations: [Consideration]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(considerations, id: \.id) { consideration in
                    NavigationLink(
                        destination: {
                            ArgumentsView(arguments: consideration.arguments)
                        }, label: {
                            ConsiderationCellView(
                                yesPercent: consideration.yesPercent,
                                name: consideration.title,
                                date: consideration.date
                            )
                        }
                    )
                }
                .padding(.top, 10)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Your Considerations")
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationBarHideDivider()
        }
    }
}

struct ConsiderationView_Previews: PreviewProvider {
    static var previews: some View {
        ConsiderationsView(considerations: Consideration.previewMocConsiderations())
    }
}
