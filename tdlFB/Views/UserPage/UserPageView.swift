//
//  UserPageView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 12.05.2022.
//

import SwiftUI

struct UserPageView: View {
    private let userImage = Asset.Images.profile.name
    var body: some View {
        NavigationView {
            VStack {
                Image(userImage)
                    .resizable()
                    .offset(y: 15)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.gray, lineWidth: 1)
                    }
                VStack {
                    Text("Info")
                        .fontWeight(.semibold)
                        .font(.system(size: 17))
                    
                    Divider()
                    Text("Name: Darya\nDate of Birth: 16.11.2004\nE-mail: l******h@icloud.com")
                }
            }
            .padding()
            .navigationTitle("User")
            //.navigationBarItems(trailing: EditButton())
        }
    }
}

struct UserPageView_Previews: PreviewProvider {
    static var previews: some View {
        UserPageView()
    }
}
