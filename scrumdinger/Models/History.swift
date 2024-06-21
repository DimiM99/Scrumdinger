//
//  History.swift
//  scrumdinger
//
//  Created by Dmitri Moscoglo on 21.06.24.
//

import Foundation

struct History: Identifiable {
    let id: UUID
    let date: Date
    let attendees: [DailyScrum.Attendee]
    
    init(id: UUID = UUID(), date: Date, attendees: [DailyScrum.Attendee]) {
        self.id = id
        self.date = date
        self.attendees = attendees
    }
}
