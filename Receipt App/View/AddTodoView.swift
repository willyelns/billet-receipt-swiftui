//
//  AddTodoView.swift
//  Receipt App
//
//  Created by Will Xavier on 07/05/21.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["High", "Normal", "Low"]
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Form {
                // MARK: - TODO NAME
                TextField("Todo", text: $name)
                
                //MARK: - TODO PRIORITY
                Picker("Priority", selection: $priority) {
                    ForEach(self.priorities, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                
                // MARK - SAVE BUTTON
                Button(action: {
                    print("Save a new todo item.")
                }) {
                    Text("Save")
                } //: SAVE BUTTON
            } //: FORM
            
            Spacer()
        } //: VSTACK
        .navigationBarTitle("New Todo", displayMode: .inline)
        .navigationBarItems(trailing:
            Button(action: {
//                self.presentationMode.wrappedValue.dismiss()
                print("test")
            }) {
                Image(systemName: "xmark")
            }
        )
    } //: NAVIGATION
}

// MARK: - PREVIEW

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
