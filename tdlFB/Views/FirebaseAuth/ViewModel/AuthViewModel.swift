//
//  AuthViewModel.swift
//  ToDo
//
//  Created by Darya Zhitova on 03.05.2022.
//

import Foundation
import FirebaseAuth
import FirebaseCore
import SwiftUI


class AuthViewModel: ObservableObject {
    
    func createNewAccount(email: String, password: String) {
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            guard error == nil else {
                return
            }
        }
    }
    
    
    func loginUser(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) {  result, error in
            guard error == nil else {
                return
            }
        }
    }
    
    func  signOut() {
        try? Auth.auth().signOut()
    }
    
}

