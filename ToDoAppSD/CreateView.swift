//
//  CreateView.swift
//  ToDoAppSD
//
//  Created by Mitch Andrade on 6/13/23.
//

import SwiftUI

struct CreateToDoView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        List {
            TextField("Name", text: .constant(""))
            DatePicker("Choose a date", selection: .constant(.now))
            Toggle("Important?", isOn: .constant(false))
            Button("Create") {
                
                dismiss()
            }
        }
        .navigationTitle("Create To Do")
    }
}

#Preview {
    CreateToDoView()
}
