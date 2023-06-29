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
            ZStack {
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(considerations, id: \.id) { consideration in
                            NavigationLink(
                                destination: {
                                    ArgumentsView(arguments: consideration.arguments)
                                }, label: {
                                    ConsiderationCellView(
                                        yesPercent: consideration.yesPercent,
                                        name: consideration.title
                                    )
                                }
                            )
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 0)
                    }
                }
                
                VStack {
                    Spacer()
                    ConsiderationNewButton()
                        .padding(.bottom, 50)
                }
            }
            .background(Color.backgroundColor)
            .navigationTitle("Your Considerations")
            .navigationBarBackgroundColor(color: UIColor.navigationBackground)
        }
    }
}

struct ConsiderationView_Previews: PreviewProvider {
    static var previews: some View {
        ConsiderationsView(considerations: Consideration.previewMocConsiderations())
    }
}
