//
//  Date_Ext.swift
//  Step Tracker
//
//  Created by NIL on 24.08.2025.
//

import Foundation

extension Date {
    var weekdayInt: Int {
        Calendar.current.component(.weekday, from: self)
    }
}
