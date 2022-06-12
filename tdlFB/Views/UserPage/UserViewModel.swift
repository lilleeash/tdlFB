//
//  UserViewModel.swift
//  tdlFB
//
//  Created by mac on 12.06.2022.
//

import Foundation
import SwiftUI


class UserViewModel: ObservableObject {
    @Published var userInfo: [UserModel] = []
    
    init() { getItems() }
    
    func getItems() {
        var newItems = [UserModel]()
        userInfo.append(contentsOf: newItems)
    }
    func removeItems(indexSet: IndexSet) {
        userInfo.remove(atOffsets: indexSet)
    }
    func moveItemes(from: IndexSet, to: Int) {
        userInfo.move(fromOffsets: from, toOffset: to)
    }
    func addItem(name: String, age: Int, email: String)
    {
        var newItems = UserModel(name: name, email: email, age: age)
        userInfo.append(newItems)
    }
}
