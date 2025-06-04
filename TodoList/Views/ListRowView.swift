//
//  ListRowView.swift
//  TodoList
//
//  Created by Varun Saxena on 04/06/25.
//

import SwiftUI

struct ListRowView: View {
    let item : ItemModel
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}

#Preview {
    var item1 = ItemModel(title: "Item1", isCompleted: false)
    ListRowView(item: item1)
}
