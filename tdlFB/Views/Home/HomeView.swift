//
//  HomeView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 06.05.2022.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - Properties
    
    @State var isSheet: Bool = false
    @State private var date = Date()
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
                                ItemDetailView(date: date.formatted(date: .complete, time: .omitted), time: date.formatted(date: .omitted, time: .shortened))
                            } label: {
                                HomeWeekRowView(item: item)
                            }
                            
                        }
                    }
                    .navigationBarTitle("Today, \(date.formatted(date: .abbreviated, time: .omitted))", displayMode: .inline)
                    .navigationBarItems(leading: NavigationLink(destination: SettingsView()) { SlideBarButton() },
                                        trailing: NavigationLink(destination: UserPageView()) { UserButton() }
                    )
                }
                AddItemButton(isShowingSheet: $isSheet)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
            }
        }
    }
}
