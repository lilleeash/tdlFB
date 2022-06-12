//
//  UserModel.swift
//  tdlFB
//
//  Created by mac on 12.06.2022.
//

import Foundation
import SwiftUI

struct UserModel: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var email: String
    var age: Int
    
}
