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
                    HStack {
                        Button(action: {}) {
                            R.Images.plusImage
                                .foregroundColor(.greenPrimary)
                        }
                        Text("Should I go to Boris's party?")
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            .padding(.trailing, 15)
                            .padding(.leading, 15)
                        Button(action: {}) {
                            R.Images.plusImage
                                .foregroundColor(.redPrimary)
                        }
                    }
                    .padding(.top, 10)
                    Divider()
                    HStack(spacing: 20) {
                        ArgumentsList(arguments: argumentsFor)
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
