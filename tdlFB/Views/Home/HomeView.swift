//
//  HomeView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 06.05.2022.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home View")
            }
            .navigationBarTitle("Home", displayMode: .large)
            .navigationBarItems(
                leading: NavigationLink(destination: SettingsView()) {
                    SlideBarButton()
                }, trailing: NavigationLink(destination: UserPageView()){
                    UserButton()
                }
            )
        }
    }
}

#if DEBUG
struct HomeView_Provider: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
