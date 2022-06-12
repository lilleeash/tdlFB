//
//  MainViewModel.swift
//  tdlFB
//
//  Created by Darya Zhitova on 12.05.2022.
//

import Foundation
import SwiftUI


class ViewButtonsViewModel: ObservableObject {
    
    @Published var currentView: Views = .registrationView
}

enum Views {
    case homeView
    case registrationView
}

struct SwitchBetweenViews: View {
    @EnvironmentObject var viewButtons: ViewButtonsViewModel
    var body: some View {
        switch viewButtons.currentView {
        case .registrationView:
            RegistratioinView()
        case .homeView:
            HomeView()
        }
    }
}


