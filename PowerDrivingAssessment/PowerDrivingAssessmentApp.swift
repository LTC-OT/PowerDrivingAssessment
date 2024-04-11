//
//  PowerDrivingAssessmentApp.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-22.
//

import SwiftUI
import SwiftData

@main
struct PowerDrivingAssessmentApp: App {
    var body: some Scene {
        WindowGroup {
           HomeView()
        }
        .modelContainer(for: [Resident.self])
    }
}
