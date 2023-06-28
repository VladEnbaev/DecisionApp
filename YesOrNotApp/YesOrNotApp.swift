//
//  YesOrNotAppApp.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 24.06.2023.
//

import SwiftUI

@main
struct YesOrNotApp: App {
    var body: some Scene {
        WindowGroup {
            ConsiderationsView(considerations: Consideration.previewMocConsiderations())
        }
    }
}
