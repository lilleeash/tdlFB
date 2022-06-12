//
//  ItemDetailView.swift
//  tdlFB
//
//  Created by mac on 09.06.2022.
//

import SwiftUI

struct ItemDetailView: View {

    @EnvironmentObject var toDoItemViewModel: ToDoItemViewModel
    
    var body: some View {
        NavigationView {
            ForEach(toDoItemViewModel.items) { item in 
                VStack {
                    Text(item.date)
                    Text(item.time)
                }
            }
        }
        .navigationTitle("ToDo Detail")
    }
}
