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
            .navigationBarItems(leading: Button(action: {
                sheetToggle.toggle()
            }) {
                Image(systemName: "list.bullet")
                    .foregroundColor(.black)
                    .font(.system(size: 20))
            }.sheet(isPresented: $sheetToggle, content: {
                SettingsView()
            }), trailing: Button(action: {
                print("button is tapped")
            }, label: {
                Image(Asset.Images.profile.name)
                    .resizable()
                    .offset(y: 3)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 1)
                    }
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
