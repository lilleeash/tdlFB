//
//  AuthViewModel.swift
//  ToDo
//
//  Created by Darya Zhitova on 03.05.2022.
//

import Foundation
import FirebaseAuth
import Firebase
import SwiftUI


class AuthViewModel: ObservableObject {
    
    @Published var currentView: Views = .registrationView
    
    
    func createNewAccount(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            guard error == nil else {
                return
            }
            
            withAnimation {
                self.currentView = .homeView
            }
        }
    }
    
    
    func loginUser(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            guard error == nil else {
                return
            }
            
            withAnimation {
                self.currentView = .homeView
            }
        }
    }
    
    func  signOut() {
        try? Auth.auth().signOut()
        
        withAnimation {
            self.currentView = .registrationView
        }
    }
    
}

enum Views {
    case homeView
    case registrationView
}

struct SwitchBetweenViews: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        switch authViewModel.currentView {
        case .registrationView:
            RegistratioinView()
        case .homeView:
            HomeView()
        }
    }
}

