//
//  ResidentModel.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2024-01-04.
//

import Foundation
import SwiftData


@Model
class Resident {
    var name: String
    var date: Date
    var totalScore: String
    var comments: String
    
    init(name: String, date: Date, totalScore: String, comments: String) {
        self.name = name
        self.date = date
        self.totalScore = totalScore
        self.comments = comments
    }
}
