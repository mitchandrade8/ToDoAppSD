//
//  ContentView.swift
//  ToDoAppSD
//
//  Created by Mitch Andrade on 6/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showCreate = false
    
    var body: some View {
        
        NavigationStack {
            Text("What it do baby")
                .toolbar {
                    ToolbarItem {
                        Button(action: {
                            showCreate.toggle()
                        }, label: {
                            Label("Add Item", systemImage: "plus")
                        })
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
