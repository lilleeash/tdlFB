//
//  HomeModel.swift
//  tdlFB
//
//  Created by Darya Zhitova on 11.05.2022.
//

import Foundation
import SwiftUI


struct ToDoItemModel: Identifiable {
    
    var id = UUID().uuidString
    
    var toDo: String
    var date: String
    var time: String
    var color: Color = .accentColor
    
    /*
     
     MARK: - in future
     
     var aboutItem: String
     var location (using mapKit)
     
    */
}
