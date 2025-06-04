//
//  ListRowView.swift
//  TodoList
//
//  Created by Varun Saxena on 04/06/25.
//

import SwiftUI

struct ListRowView: View {
    let title : String
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is the first title")
}
