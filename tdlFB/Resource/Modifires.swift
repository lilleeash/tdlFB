//
//  Modifires.swift
//  ToDo
//
//  Created by Darya Zhitova on 02.05.2022.
//

import Foundation
import SwiftUI

//MARK: - Modifires and components for Apllication

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
        }.padding(8)
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
        }.padding(8)
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


struct CustomSignOutButton: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .foregroundColor(.gray)
                .opacity(0.1)
                .frame(maxWidth: .infinity, maxHeight: 45)
            Text("Sign Out")
                .foregroundColor(.red)
        }.padding(8)
    }
}


struct SlideBarButton: View {
    var body: some View {
        Image(systemName: "list.bullet")
            .foregroundColor(.black)
            .font(.system(size: 20))
    }
}


struct UserButton: View {
    var body: some View {
            Image(Asset.Images.profile.name)
                .resizable()
                .offset(y: 3)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 1)
                }
    }
}

struct AddItemButton: View {
    var body: some View {
        Button {
            print("add")
        } label: {
            ZStack {
                Circle()
                    .foregroundColor(Color.accentColor)
                    .frame(width: 50, height: 50)
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .font(.system(size: 35))
            }
            .padding()
        }
        
    }
}

struct SlideBarButton_Previews: PreviewProvider {
    static var previews: some View {
        AddItemButton()
    }
}
