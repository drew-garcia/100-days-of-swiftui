//
//  ExpenseItem.swift
//  iExpense
//
//  Created by drewdev on 6/15/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
