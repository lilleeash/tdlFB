//
//  SettingsView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 11.05.2022.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack {
            
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing).padding()
            
            Text("Settings View")
            
            Button {
                authViewModel.signOut()
            } label: {
                CustomSignOutButton()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
