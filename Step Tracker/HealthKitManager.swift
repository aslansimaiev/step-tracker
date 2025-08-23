//
//  HealthKitManager.swift
//  Step Tracker
//
//  Created by NIL on 23.08.2025.
//

import Foundation
import HealthKit
import Observation

@Observable class HealthKitManager {
    
    let store = HKHealthStore()
    
    let types: Set = [HKQuantityType(.stepCount), HKQuantityType(.bodyMass)]
}
