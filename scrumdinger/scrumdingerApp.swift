//
//  scrumdingerApp.swift
//  scrumdinger
//
//  Created by Dmitri Moscoglo on 20.06.24.
//

import SwiftUI

@main
struct scrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
