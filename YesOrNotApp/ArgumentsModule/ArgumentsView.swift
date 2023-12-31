//
//  ContentView.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 24.06.2023.
//

import SwiftUI

struct ArgumentsView: View {
    @State private var scrollOffset : CGPoint = CGPoint()
    @State private var secondScrollOffset : CGPoint = CGPoint()
    
    let arguments  : [Argument]
    
    private var argumentsFor : [Argument] {
        return arguments.filter() { $0.isArgumentFor }
    }
    
    private var argumentsAgainst : [Argument] {
        return arguments.filter() { !$0.isArgumentFor }
    }
    
    private let constant: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .ignoresSafeArea()
            
            OffsetObservingScrollView(offset: $scrollOffset) {
                ZStack {
                    VStack {
                        HStack(spacing: 10) {
                            ArgumentsList(arguments: argumentsFor)
                                .padding(.leading, 10)
                            ArgumentsList(arguments: argumentsAgainst)
                                .padding(.trailing, 10)
                        }
                        .padding(.top, 70)
                    }
                    VStack {
                        TopNavActionView(height: 50)
                            .padding(.top, max(0, -scrollOffset.y))
                        Spacer()
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitleDisplayMode(.automatic)
            .navigationTitle("Make a decision.")
            .navigationBarItems(
                trailing:
                    ProgressCircle(
                        yesPercent: Double(argumentsFor.count) / Double(arguments.count) * 100,
                        size: 30
                    )
            )
        }
        
    }
}

struct ArgumentsView_Preview: PreviewProvider {
    static var previews: some View {
        ArgumentsView(arguments: Argument.previewMocArguments)
    }
}

