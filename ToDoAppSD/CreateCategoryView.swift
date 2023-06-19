//
//  CreateCategoryView.swift
//  ToDoAppSD
//
//  Created by Mitch Andrade on 6/19/23.
//

import SwiftUI
import SwiftData

@Model
class Category {
    
    @Attribute(.unique)
    var title: String
    
    var items: [Item]?
    
    init(title: String = "") {
        self.title = title
    }
}

struct CreateCategoryView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) var modelContext
    
    @State private var title: String = ""
    @Query private var categories: [Category]
    
    var body: some View {
        List {
            Section("Category Title") {
                TextField("Enter title here", text: $title)
                Button("Add Cateogry") {
                    withAnimation {
                        modelContext.insert(Category(title: title))
                    }
                }
                .disabled(title.isEmpty)
            }
            
            Section("Categories") {
                ForEach(categories) { category in
                    Text(category.title)
                        .swipeActions {
                            Button(role: .destructive) {
                                withAnimation {
                                    modelContext.delete(category)
                                }
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }

                        }
                }
            }
            
        }
        .navigationTitle("Add Category")
        .toolbar {
            ToolbarItem(placement: .cancellationAction) {
                Button("Dismiss") {
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    CreateCategoryView()
}
