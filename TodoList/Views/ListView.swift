//
//  ListView.swift
//  TodoList
//
//  Created by Varun Saxena on 04/06/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [ItemModel] = [
        ItemModel(title: "this is 1st item", isCompleted: false),
        ItemModel(title: "this is 2nd item", isCompleted: true),
        ItemModel(title: "this is 3rd item", isCompleted: false)
        
    ]
    
    var body: some View {
        List {
            ForEach(items){ item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add",destination: AddView())
        )
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}


