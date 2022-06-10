//
//  HomeView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 06.05.2022.
//

import SwiftUI

struct HomeView: View {
    @State var isSheet: Bool = false
    @EnvironmentObject var toDoItemViewModel: ToDoItemViewModel
    var body: some View {
        NavigationView {
            ZStack {
                
                if toDoItemViewModel.items.isEmpty {
                    Text("Let's add new goals")
                        .foregroundColor(.gray)
                        .font(.title2)
                }
                
                ScrollView {
                    VStack {
                        ForEach(toDoItemViewModel.items) { item in
                            NavigationLink {
                                ItemDetailView()
                            } label: {
                                HomeWeekRowView(item: item)
                            }

                        }
                    }
                .navigationBarTitle("Today, 23rd of December", displayMode: .inline)
                .navigationBarItems(leading: NavigationLink(destination: SettingsView()) {
                    SlideBarButton()
                }, trailing: NavigationLink(destination: UserPageView()) {
                    UserButton()
                }
                )
            }
                AddItemButton(isShowingSheet: $isSheet)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            }
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
