//
//  TodoApp.swift
//  Todo
//
//  Created by Mohammed Mubashir on 01/03/23.
//

import SwiftUI

@main
struct TodoApp: App {
    var body: some Scene {
        WindowGroup{
            NavigationView {
                NoListView()
            }
        }
    }
}
