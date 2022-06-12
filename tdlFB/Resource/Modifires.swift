//
//  Modifires.swift
//  ToDo
//
//  Created by Darya Zhitova on 02.05.2022.
//

import Foundation
import SwiftUI

//MARK: - Modifires and components for Apllication

// MARK: - Main button

struct MainButton: View {
    var width: CGFloat
    var height: CGFloat
    var buttonText: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 7)
                .foregroundColor(Color(Asset.accentColor.name))
                .frame(width: width, height: height)
            Text(buttonText)
                .font(.title3)
                .foregroundColor(.white)
        }
    }
}

// MARK: - Sign in with Apple Button

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

// MARK: - TextField

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
// MARK: - Sign Out Button

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

// MARK: - SlideBar Button

struct SlideBarButton: View {
    var body: some View {
        Image(systemName: "list.bullet")
            .foregroundColor(.black)
            .font(.system(size: 20))
    }
}

// MARK: - Icon of user button

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

// MARK: - Add Item button

struct AddItemButton: View {
    @Binding var isShowingSheet: Bool
    var body: some View {
        Button {
            isShowingSheet.toggle()
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
        .sheet(isPresented: $isShowingSheet, content: {
            AddItemView()
        })
    }
}

// MARK: - Toggle 

struct ToggleAddItem: View {
    
    @Binding var isOn: Bool
    var backgroundColor: Color
    var image: String
    var title: String
    var time: String
    
    var body: some View {
        Toggle(isOn: $isOn) {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(backgroundColor)
                    Image(systemName: image)
                        .foregroundColor(.white)
                        .font(.system(size: 19))
                }
                .frame(width: 30, height: 30)
                .padding(5)
                VStack {
                    Text(title)
                    if isOn {
                        Text(time)
                            .font(.caption)
                            .foregroundColor(.accentColor)
                    }
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
