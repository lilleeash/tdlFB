//
//  ItemDetailView.swift
//  tdlFB
//
//  Created by mac on 09.06.2022.
//

import SwiftUI

struct ItemDetailView: View {

    @EnvironmentObject var toDoItemViewModel: ToDoItemViewModel
    var date: String
    var time: String
    
    var body: some View {
        NavigationView {
            VStack {
                Text(date)
                Text(time)
            }
        }
        .navigationTitle("ToDo Detail")
    }
}
