//
//  listRowView.swift
//  Todo
//
//  Created by Mohammed Mubashir on 01/03/23.
//

import SwiftUI

let item1 = ItemModel(Title: "Bring onions", IsCompleted: false)

struct listRowView: View {
let item:ItemModel
    
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

struct listRowView_Previews: PreviewProvider {
    static var previews: some View {
        listRowView(item: item1)
    }
}
