//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Delstun McCray on 7/31/23.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
