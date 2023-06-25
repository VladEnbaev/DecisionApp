//
//  ArgumentModel.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 24.06.2023.
//

import Foundation


struct Argument : Identifiable {
    var id: String
    let isArgumentFor : Bool
    let name: String
    
    
    static var previewArgumentsFor : [Argument] {
        let argumentFor1 = Argument(id: UUID().uuidString,
                                 isArgumentFor: true,
                                 name: "I'll rest and have fun")
        let argumentFor2 = Argument(id: UUID().uuidString,
                                    isArgumentFor: true,
                                    name: "I'll find out how my friends are doing")
        let argumentFor3 = Argument(id: UUID().uuidString,
                                    isArgumentFor: true,
                                    name: "We'll watch a movie that we've been wanting for a long time")
        let argumentAbout1 = Argument(id: UUID().uuidString,
                                 isArgumentFor: false,
                                 name: "I need to make an app")
        let argumentAbout2 = Argument(id: UUID().uuidString,
                                    isArgumentFor: false,
                                    name: "Long drive")
        
        return [argumentFor1, argumentFor2, argumentFor3, argumentAbout1, argumentAbout2]
    }
}
