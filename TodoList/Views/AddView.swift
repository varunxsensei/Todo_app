//
//  AddView.swift
//  TodoList
//
//  Created by Varun Saxena on 04/06/25.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText : String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Add a todo", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .cornerRadius(10)
                
                Button("Save"){
                    print("Chut")
                }
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .cornerRadius(10)
            }
            .padding(14)
        }
        .navigationTitle("Add Todo")
        
    }
}

#Preview {
    NavigationView{
        AddView()
    }
}
