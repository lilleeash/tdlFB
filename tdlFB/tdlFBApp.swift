//
//  tdlFBApp.swift
//  tdlFB
//
//  Created by Darya Zhitova on 11.05.2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct tdlFBApp: App {
    
    @StateObject var authViewModel = AuthViewModel()
    
    init() {
        
        FirebaseApp.configure()
        
    }
    
    var body: some Scene {
        WindowGroup {
            SwitchBetweenViews()
                .environmentObject(authViewModel)
        }
    }
}
