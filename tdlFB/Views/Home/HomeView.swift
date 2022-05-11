//
//  HomeView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 06.05.2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("You are Sign in")
                Button {
                    viewModel.signOut()
                } label: {
                    Text("Sign Out")
                }
            }
        }
    }
}

