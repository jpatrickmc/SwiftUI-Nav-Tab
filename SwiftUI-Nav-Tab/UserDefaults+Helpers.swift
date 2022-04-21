//
//  UserDefaults+Helpers.swift
//  SwiftUI-Nav-Tab
//
//  Created by JP McDaniel on 4/20/22.
//

import Foundation

extension UserDefaults {
    
    enum UserDefaultKeys: String {
        case isLoggedIn
        case isRegistered
    }
    
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultKeys.isLoggedIn.rawValue)
    }
    
}


