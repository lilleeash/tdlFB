//
//  ViewModel.swift
//  tdlFB
//
//  Created by Darya Zhitova on 12.05.2022.
//

import SwiftUI
import Foundation


class ToDoItemViewModel: ObservableObject {
    @Published var items: [ToDoItemModel] = []
   
   init() { getItems() }
   func getItems() {
       var newItems = [ToDoItemModel]()
      items.append(contentsOf: newItems)
   }
   func removeItems(indexSet: IndexSet) {
      items.remove(atOffsets: indexSet)
   }
   func moveItemes(from: IndexSet, to: Int) {
      items.move(fromOffsets: from, toOffset: to)
   }
    func addItem(toDo: String, date: String)
   {
       var newItems = ToDoItemModel(toDo: toDo, date: date)
      items.append(newItems)
   }
   func updateItem(item: ToDoItemModel)
   {
    
   }
}
