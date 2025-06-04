//
//  ListView.swift
//  TodoList
//
//  Created by Varun Saxena on 04/06/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [String] = [
        "This is the first item",
        "This is the second item",
        "This is the third item"
    ]
    
    var body: some View {
        List {
            ForEach(items,id:\.self){
                item in
                ListRowView(title: item)
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


