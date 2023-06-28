//
//  Consideration.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 27.06.2023.
//

import Foundation

struct Consideration : Identifiable {
    var id = UUID()
    var title: String
    var date: Date
    
    let arguments: [Argument]
    
    var argumentsFor : [Argument] {
        arguments.filter( {$0.isArgumentFor })
    }
    
    var argumentsAbout : [Argument] {
        arguments.filter( {!$0.isArgumentFor })
    }
    
    var yesPercent : Double {
        return Double(argumentsFor.count) / Double(arguments.count)
    }
    
    init(id: UUID = UUID(), title: String, date: Date = Date(), arguments: [Argument]) {
        self.id = id
        self.title = title
        self.date = date
        self.arguments = arguments
    }
    
    static func previewMocConsiderations() -> [Consideration] {
        
        let consideration1 = Consideration(title: "Should I go to Boris's party?", arguments: Argument.previewMocArguments)
        let consideration2 = Consideration(title: "Should I go to Boris's party?", arguments: Argument.previewMocArguments)
        
        return [consideration1, consideration2]
    }
}
