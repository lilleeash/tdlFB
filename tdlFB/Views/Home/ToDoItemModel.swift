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
    
    var toDo: [String]
    var date: String
    var color: Color
    
    /*
     
     MARK: - in future
     
     var aboutItem: String
     var location (using mapKit)
     
    */
    
    static var items: [ToDoItemModel] = [
        ToDoItemModel(toDo: ["Play with brother", "Cook dinner"], date: "20th Mon", color: .red),
        ToDoItemModel(toDo: ["Play with brother", "Cook dinner"], date: "21st Tue", color: .blue),
        ToDoItemModel(toDo: ["Play with brother", "Cook dinner"], date: "22nd Wed", color: .orange),
        ToDoItemModel(toDo: ["Play with brother", "Cook dinner"], date: "23rd Thu", color: .green),
        ToDoItemModel(toDo: ["Play with brother", "Cook dinner"], date: "24th Fri", color: .purple),
        ToDoItemModel(toDo: ["Play with brother", "Cook dinner"], date: "25th Sat", color: .mint),
        ToDoItemModel(toDo: ["Play with brother", "Cook dinner"], date: "26th Sun", color: .pink),
       
    ]
    
}

