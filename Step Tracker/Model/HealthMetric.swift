//
//  HealthMetric.swift
//  Step Tracker
//
//  Created by NIL on 23.08.2025.
//

import Foundation
   
struct HealthMetric: Identifiable {
    let id = UUID()
    let date: Date
    let value: Double
}
