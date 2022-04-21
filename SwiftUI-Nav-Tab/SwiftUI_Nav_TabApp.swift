//
//  SwiftUI_Nav_TabApp.swift
//  SwiftUI-Nav-Tab
//
//  Created by JP McDaniel on 4/20/22.
//

import SwiftUI

@main
struct SwiftUI_Nav_TabApp: App {
    var body: some Scene {
        WindowGroup {
            if UserDefaults.standard.isLoggedIn() {
                MainView()
            } else {
                LoginView()
            }
            
        }
    }
}
