//
//  ItemModel.swift
//  TodoList
//
//  Created by Varun Saxena on 04/06/25.
//

import Foundation

struct ItemModel : Identifiable{
    let id : String = UUID().uuidString
    let title : String
    let isCompleted : Bool
    
}
