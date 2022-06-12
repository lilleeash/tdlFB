//
//  AddItemView.swift
//  tdlFB
//
//  Created by mac on 08.06.2022.
//

import SwiftUI

struct AddItemView: View {
    
    // MARK: - Properties
    @EnvironmentObject var toDoItemViewModel: ToDoItemViewModel
    @Environment(\.presentationMode) var presentationMode
    @State var text: String = ""
    @State private var isOnToggle = false
    @State private var date = Date()
    
    // MARK: - var body: some View
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    TextField("Enter your new goal", text: $text)
                        .textFieldStyle(MyTextFieldStyle())
                        .padding([.top, .bottom], 50)
                    
                    if text == "" {
                        
                    }
                    
                    ToggleAddItem(isOn: $isOnToggle, backgroundColor: .yellow, image: "calendar", title: "Date & Time", time: date.formatted(date: .long, time: .omitted))
                    if isOnToggle {
                        DatePicker("Select a data", selection: $date)
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
    
    // MARK: - Methods
    
    func saveButtonPressed() {
        toDoItemViewModel.addItem(toDo: text, date: date.formatted(date: .abbreviated, time: .omitted), time: date.formatted(date: .omitted, time: .shortened))
        presentationMode.wrappedValue.dismiss()
    }
}



struct AddItemView_Preview: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
