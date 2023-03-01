//
//  ItemModel.swift
//  Todo
//
//  Created by Mohammed Mubashir on 01/03/23.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    var id: String
    var title:String
    var isCompleted:Bool
    
    
    init(Id:String = UUID().uuidString, Title:String, IsCompleted:Bool){
        self.id = Id
        self.title = Title
        self.isCompleted = IsCompleted
    }
    
    
    func updateCompleted() -> ItemModel {
        return ItemModel(Id: id, Title: title, IsCompleted: !isCompleted)
    }
    
    
}
