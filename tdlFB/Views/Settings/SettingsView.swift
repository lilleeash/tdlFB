//
//  SettingsView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 11.05.2022.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    @EnvironmentObject var viewButtons: ViewButtonsViewModel
    var body: some View {
        VStack {
            
            Text("Settings View")
            
            Button {
                authViewModel.signOut()
                withAnimation {
                    self.viewButtons.currentView = .registrationView
                }
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
