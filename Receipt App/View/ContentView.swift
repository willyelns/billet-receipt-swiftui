//
//  ContentView.swift
//  Receipt App
//
//  Created by Will Xavier on 07/05/21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var showingAddTodoView: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List(0 ..< 5) { item in
                Text("Hello, World")
            } //: LIST
            .navigationBarTitle("Todo", displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                    self.showingAddTodoView.toggle()
                }) {
                    Image(systemName: "plus")
                } //: ADD BUTTON
                                    .sheet(isPresented: $showingAddTodoView) {
                                        AddTodoView()
                                    }
            )
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
