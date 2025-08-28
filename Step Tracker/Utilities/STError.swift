//
//  STError.swift
//  Step Tracker
//
//  Created by NIL on 27.08.2025.
//

import Foundation

enum STError: LocalizedError {
    case authNotDetermined
    case sharingDenied(quantityType: String)
    case noData
    case unableToCompleteRequest
    case invalidValue
    
    var errorDescription: String? {
        switch self {
        case .authNotDetermined:
            "Need Access to Health Data"
        case .sharingDenied(_):
            "No write Access"
        case .noData:
            "No Data"
        case .unableToCompleteRequest:
            "Unable to complete Request"
        case .invalidValue:
            "Invalid Value"
        }
    }
    
    var failureReason: String {
        switch self {
        case .authNotDetermined:
            "You have not given access to your Health data. Please go to Settings > Health > Data Access & Devices."
        case .sharingDenied(let quantityType):
            "You have denied access to upload your \(quantityType) data.\n\nYou can change this in Settings > Health > Data Access & Devices."
        case .noData:
            "There is no data for this Health statistics."
        case .unableToCompleteRequest:
            "We are unable to complete your request at this time.\n\nPlease try again later or contact support."
        case .invalidValue:
            "Must be a numeric value with a maximum of one decimal place."
        }
    }
}
