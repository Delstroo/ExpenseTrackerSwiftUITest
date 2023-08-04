//
//  Extensions.swift
//  ExpenseTracker
//
//  Created by Delstun McCray on 7/31/23.
//

import SwiftUI

extension Color {
    static let background = Color("background")
    static let icon = Color("icon")
    static let text = Color("text")
    static let systemBackground = Color("systemBackground")
}

extension DateFormatter {
    static let allNumbericUSA: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        
        return formatter
    }()
}

extension String {
    func dateParesd() -> Date {
        guard let parsedData = DateFormatter.allNumbericUSA.date(from: self) else { return Date() }
        
        return parsedData
    }
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false 
    }
}

extension Date: Strideable {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
    }
}

extension Double {
    func roundedTo2Digits() -> Double {
        return (self * 100).rounded() / 100
    }
}
