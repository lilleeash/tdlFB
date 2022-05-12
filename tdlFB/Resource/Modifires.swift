//
//  Modifires.swift
//  ToDo
//
//  Created by Darya Zhitova on 02.05.2022.
//

import Foundation
import SwiftUI

// Modifires and components for Apllication

//UI of button for Registration/SignIn/SignUp Views
struct MainButton: View {
    var buttonText: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .foregroundColor(Color(Asset.accentColor.name))
                .frame(width: 225, height: 44)
            Text(buttonText)
                .font(.title3)
                .foregroundColor(.white)
        }
    }
}

struct SignInWithAppleButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .foregroundColor(.clear)
                .frame(width: 225, height: 44)
                .overlay(
                    RoundedRectangle(cornerRadius: 7)
                        .stroke(Color(Asset.Colors.signInApple.name), lineWidth: 1)
                )
            Label("Sign In with Apple", systemImage: "applelogo")
                .font(.system(size: 19))
                .foregroundColor(Color(Asset.Colors.signInApple.name))
        }
    }
}

//Modifer for textField in Sign In/Up
// .textFieldStyle(CustomTextFieldModiferStruct())
struct MyTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
      return configuration
        .padding(5)
        .disableAutocorrection(true)
        .autocapitalization(.none)
        .frame(maxWidth: .infinity, maxHeight: 10)
        .padding()
        .background(Color(Asset.Colors.lightGray.name))
        .overlay(RoundedRectangle(cornerRadius: 7).stroke(Color(Asset.Colors.lightGray.name)))
    }
}

struct SecureTextField: View {
    
    @State private var isSecure: Bool = true
    @Binding var text: String

    var body: some View {
        HStack {
            if isSecure {
                SecureField("Enter your password", text: $text)
                    .textFieldStyle(MyTextFieldStyle())
            } else {
                TextField(text, text: $text)
                    .textFieldStyle(MyTextFieldStyle())
            }
        }.overlay(alignment: .trailing) {
            Image(systemName: isSecure ? "eye.slash" : "eye")
                .padding(.trailing, 8)
                .onTapGesture {
                    isSecure.toggle()
                }
        }
    }
}
