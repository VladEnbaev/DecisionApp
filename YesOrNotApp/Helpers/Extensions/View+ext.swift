//
//  View + Ext.swift
//  YesOrNotApp
//
//  Created by Влад Енбаев on 26.06.2023.
//

import SwiftUI


struct NavAppearance: ViewModifier {
    init(backgroundColor: UIColor, foregroundColor: UIColor, shadowColor: UIColor, hideSeparator: Bool, tintColor: UIColor) {
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: foregroundColor]
        appearance.largeTitleTextAttributes = [.foregroundColor: foregroundColor]
        appearance.backgroundColor = backgroundColor
        appearance.shadowColor = shadowColor
        if hideSeparator {
            appearance.shadowColor = .clear
        }
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().tintColor = tintColor
    }
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.shadowColor = .clear
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }
    
    init(color: UIColor) {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = color
        appearance.shadowColor = .clear
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
    }
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func navigationBarHideDivider() -> some View {
        self.modifier(NavAppearance())
    }
    
    func navigationBarBackgroundColor(color: UIColor) -> some View {
        self.modifier(NavAppearance(color: color))
    }
}

