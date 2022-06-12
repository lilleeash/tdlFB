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
    @StateObject var buttonViewModel = ViewButtonsViewModel()
    @StateObject var toDoItemViewModel = ToDoItemViewModel()
    @StateObject var userInfo = UserViewModel()
    
    init() {
        
        FirebaseApp.configure()
        
    }
    
    var body: some Scene {
        WindowGroup {
            // with firebase auth
//            SwitchBetweenViews()
//                .environmentObject(authViewModel)
//                .environmentObject(buttonViewModel)
//                .environmentObject(toDoItemViewModel)
            
            // only home view
            HomeView()
                .environmentObject(toDoItemViewModel)
        }
    }
}
