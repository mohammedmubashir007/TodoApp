//
//  ListViewModel.swift
//  Todo
//
//  Created by Mohammed Mubashir on 01/03/23.
//

import Foundation

class ListViewModel : ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    let itemsKey:String = "items_List"
    
    
    func getItems(){
        guard 
    }
    
    
    func saveItems(){
        if let encodeData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodeData, forKey: itemsKey)
        }
    }
    
    
}
