//
//  SignInView.swift
//  ToDo
//
//  Created by Darya Zhitova on 02.05.2022.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct SignInView: View {
    
    private let image = Asset.Images.signIn.name
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    @EnvironmentObject var authViewModel: AuthViewModel
    @EnvironmentObject var viewButtons: ViewButtonsViewModel
    
    var body: some View {
        
        VStack {
            
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                Text("E-mail")
                
                TextField("Enter your E-mail", text: $email)
                    .textFieldStyle(MyTextFieldStyle())
                
                Text("Pasword")
                
                SecureTextField(text: $password)
            }
            .padding([.bottom, .top], 16)
            
            Divider()
            
            Text("By signing up you accept the **Terms of Service** and **Privacy Policy**")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
            
            Spacer()
            
            Button {
                if !email.isEmpty, !password.isEmpty {
                    authViewModel.loginUser(email: email, password: password)
                    withAnimation {
                        self.viewButtons.currentView = .homeView
                    }
                }
            } label: {
                MainButton(width: 250, height: 42, buttonText: "Confirm")
            }

        }
        .navigationTitle("Sign In")
        .padding()
    }
}

#if DEBUG
struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
#endif
