//
//  UserPageView.swift
//  tdlFB
//
//  Created by Darya Zhitova on 12.05.2022.
//

import SwiftUI

struct UserPageView: View {
    
    @EnvironmentObject var userViewModel: UserViewModel
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
        
                    Text("Name: ")
                    
                    Text("Date of Birth: 16.11.2004")
                    
                    Text("E-mail: lilleeash@icloud.com")
                }
            }
            .padding()
            .navigationTitle("User")
        }
    }
}

struct UserPageView_Previews: PreviewProvider {
    static var previews: some View {
        UserPageView()
    }
}
