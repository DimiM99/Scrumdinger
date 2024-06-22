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
            ScrumsView(
                scrums: $store.scrums,
                saveAction: {
                    Task {
                        do {
                            try await store.save(scrums: store.scrums)
                        } catch {
                            fatalError(error.localizedDescription)
                        }
                    }
                }
            )
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
