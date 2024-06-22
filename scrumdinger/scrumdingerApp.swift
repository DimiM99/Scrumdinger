//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by Dmitri Moscoglo on 20.06.24.
//

import SwiftUI

@main
struct scrumdingerApp: App {
    
    @StateObject private var store = ScrumStore()
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums)
                .task {
                    do {
                        try await store.load()
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
        }
    }
}
