//
//  RegistratioinView.swift
//  ToDo
//
//  Created by Darya Zhitova on 01.05.2022.
//

import SwiftUI

struct RegistratioinView: View {
    
    @EnvironmentObject var authViewModel: AuthViewModel
    @State private var currentPage: Views = .registrationView
    private let regImage = Asset.Images.registration.name
    
    var body: some View {
        NavigationView {
            VStack {
                Image(regImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                NavigationLink(destination: SignInView()) {
                    MainButton(buttonText: "Sign In")
                }
                
                NavigationLink(destination: SignUpView()) {
                    MainButton(buttonText: "Sign Up")
                }
                
                Button(action: {
                    print("Apple button is tapped")
                }, label: {
                    SignInWithAppleButton()
                })
                
            }
            .navigationTitle("Registration")
            .padding()
        }
    }
}

#if DEBUG
struct RegistratioinView_Previews: PreviewProvider {
    static var previews: some View {
        RegistratioinView()
            .preferredColorScheme(.light)
    }
}
#endif
