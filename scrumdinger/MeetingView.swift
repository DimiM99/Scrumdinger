//
//  ContentView.swift
//  scrumdinger
//
//  Created by Dmitri Moscoglo on 20.06.24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(
                value: 5,
                total: 15
            )
            HStack {
                VStack(
                    alignment: .leading,
                    content: {
                        Text("Seconds Elapsed")
                            .font(.caption)
                        Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                )
                Spacer()
                VStack(
                    alignment: .trailing,
                    content: {
                        Text("Seconds Remaining")
                            .font(.caption)
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                )
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time Remianing")
            .accessibilityValue("10 Minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
        }.padding(10)
    }
}

#Preview {
    MeetingView()
}
