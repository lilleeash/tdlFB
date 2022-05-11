//
//  HomeModel.swift
//  tdlFB
//
//  Created by Darya Zhitova on 11.05.2022.
//

import Foundation


struct ToDoItemModel: Identifiable {
    
    var id = UUID().uuidString
    
    var title: String
    var time: String
    var date: String
    
    
    /*
     
     MARK: - in future
     
     var aboutItem: String
     var location (using mapKit)
     var itemColor: UIColor
     
    */
    
}
