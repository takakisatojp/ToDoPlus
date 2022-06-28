//
//  ToDo_App.swift
//  ToDo+
//
//  Created by 佐藤貴輝 on 2021/11/18.
//

import SwiftUI

@main
struct ToDo_App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Open_1()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
