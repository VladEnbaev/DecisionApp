//
//  ContentView.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 24.06.2023.
//

import SwiftUI

struct DecisionView: View {
    let arguments  : [Argument]
    
    private var argumentsFor : [Argument] {
        return arguments.filter() { $0.isArgumentFor }
    }
    
    private var argumentsAgainst : [Argument] {
        return arguments.filter() { !$0.isArgumentFor }
    }
    
    private let constant: CGFloat = 0
    
    var body: some View {
        NavigationView() {
            ZStack {
                
                VStack {
                    Text("Should i go to Boris's party?")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .padding(.top, 10)
                    HStack(spacing: 0) {
                        ArgumentsList(arguments: argumentsFor)
                            .padding(.trailing, 16)
                        ArgumentsList(arguments: argumentsAgainst)
                    }
                    .padding(.top, 12)
                }
                .navigationTitle("Make a decision.")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DecisionView(arguments: Argument.previewArgumentsFor)
    }
}
