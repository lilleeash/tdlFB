//
//  HomeWeekRowView.swift
//  tdlFB
//
//  Created by mac on 17.05.2022.
//

import SwiftUI

struct HomeWeekRowView: View {
    
    var item: ToDoItemModel
    
    var body: some View {
        VStack {
            
            ZStack(alignment: .leading) {
                
                VStack(alignment: .leading, spacing: 8) {
                    Text(item.date)
                        .fontWeight(.medium)
                        .font(.title2)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    Text(item.toDo)
                }
                .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: CGFloat(item.toDo.count) * 50)
            .padding()
            .background((item.color).opacity(0.5))
            .cornerRadius(7)
            .overlay {
                RoundedRectangle(cornerRadius: 7).stroke(lineWidth: 3).foregroundColor(item.color)
            }
        }
        .padding()
    }
}

#if DEBUG
struct HomeWeekRowView_Previews: PreviewProvider {
    static var previews: some View {
        HomeWeekRowView(item:  ToDoItemModel(toDo: "Play with brother", date: "20th Mon", color: .mint))
    }
}
#endif
