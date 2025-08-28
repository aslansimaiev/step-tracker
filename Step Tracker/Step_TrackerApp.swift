//
//  Step_TrackerApp.swift
//  Step Tracker
//
//  Created by NIL on 22.08.2025.
//

import SwiftUI

@main
struct Step_TrackerApp: App {
    
    let hkData = HealthKitData()
    let hkManager = HealthKitManager()
    
    var body: some Scene {
        WindowGroup {
            DashboardView()
                .environment(hkData)
                .environment(hkManager)
        }
    }
}
