//
//  AddView.swift
//  TodoList
//
//  Created by Varun Saxena on 04/06/25.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText : String = ""
    @State var alertTitle : String = ""
    @State var showAlert : Bool = false
    var body: some View {
        ScrollView{
            VStack {
                TextField("Add a todo", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .cornerRadius(10)
                
                Button("Save"){
                   saveBtnPressed()
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
        .alert(isPresented: $showAlert,content: getAlert)
        
    }
    
    func saveBtnPressed(){
        if isTextAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
        
    }
    
    func isTextAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be atleast 3 characters long"
            showAlert.toggle()
             return false
        }
        return true
    }
    
    func getAlert()->Alert{
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
    }
    .environmentObject(ListViewModel())
}
