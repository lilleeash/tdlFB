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
            ZStack {
                ScrollView {
                    ForEach(ToDoItemModel.items) { item in
                        HomeWeekRowView(item: item)
                    }
                }
                AddItemButton()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            }
            .navigationBarTitle("Today, 23rd of December", displayMode: .inline)
            .navigationBarItems(leading: NavigationLink(destination: SettingsView()) {
                SlideBarButton()
            }, trailing: NavigationLink(destination: UserPageView()) {
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
