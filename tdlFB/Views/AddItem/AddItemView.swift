//
//  AddItemView.swift
//  tdlFB
//
//  Created by mac on 08.06.2022.
//

import SwiftUI

struct AddItemView: View {
    
    @EnvironmentObject var toDoItemViewModel: ToDoItemViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var text: String = ""
    @State private var isOnToggle = false
    @State private var data = Date()
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    TextField("Enter your new goal", text: $text)
                        .textFieldStyle(MyTextFieldStyle())
                        .padding([.top, .bottom], 50)
                    
                    if text == "" {
                        
                    }
                    
                    ToggleAddItem(isOn: $isOnToggle, backgroundColor: .yellow, image: "calendar", title: "Date & Time", time: data.formatted(date: .long, time: .omitted))
                    if isOnToggle {
                        DatePicker("Select a data", selection: $data)
                            .datePickerStyle(.graphical)
                            .padding()
                    }
                    
                    Spacer()
                    
                    Button {
                        saveButtonPressed()
                    } label: {
                        MainButton(width: .infinity, height: 44, buttonText: "Add to list")
                    }
                }
                .padding()
            }
            .navigationBarTitle("Add an Item")
            .navigationBarItems(trailing: Button("Dismiss", action: {
                presentationMode.wrappedValue.dismiss()
            }).foregroundColor(.accentColor))
        }
    }
    
    func saveButtonPressed() {
        toDoItemViewModel.addItem(toDo: text, date: data.formatted(date: .abbreviated, time: .omitted))
        presentationMode.wrappedValue.dismiss()
    }
}

struct AddItemView_Preview: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
