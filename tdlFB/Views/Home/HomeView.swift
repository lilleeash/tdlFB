//
//  HomeView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 06.05.2022.
//

import SwiftUI

struct HomeView: View {
    
    @State private var sheetToggle: Bool = false
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Home View")
            }
            .navigationBarTitle("Home View", displayMode: .large)
            .navigationBarItems(trailing: Button(action: {
                sheetToggle.toggle()
            }) {
                Image(systemName: "gearshape.fill")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
            }.sheet(isPresented: $sheetToggle, content: {
                SettingsView()
            })
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
