//
//  ArgumentModel.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 24.06.2023.
//

import Foundation


struct Argument : Identifiable {
    var id = UUID()
    let isArgumentFor : Bool
    let name: String
    
    
    static var previewMocArguments : [Argument] {
        let argumentFor1 = Argument(
                                 isArgumentFor: true,
                                 name: "I'll rest and have fun")
        let argumentFor2 = Argument(
                                    isArgumentFor: true,
                                    name: "I'll find out how my friends are doing")
        let argumentFor3 = Argument(
                                    isArgumentFor: true,
                                    name: "We'll watch a movie that we've been wanting for a long time")
        let argumentFor4 = Argument(
                                 isArgumentFor: true,
                                 name: "I'll rest and have fun")
        let argumentFor5 = Argument(
                                    isArgumentFor: true,
                                    name: "I'll find out how my friends are doing")
        let argumentFor6 = Argument(
                                    isArgumentFor: true,
                                    name: "We'll watch a movie that we've been wanting for a long time")
        let argumentAbout1 = Argument(
                                 isArgumentFor: false,
                                 name: "I need to make an app")
        let argumentAbout2 = Argument(
                                    isArgumentFor: false,
                                    name: "Long drive")
        
        
        return [argumentFor1, argumentFor2, argumentFor3, argumentAbout1, argumentAbout2, argumentFor4, argumentFor5, argumentFor6]
    }
}

