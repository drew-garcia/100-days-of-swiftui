//
//  Activity.swift
//  Tabulae
//
//  Created by drewdev on 6/20/23.
//

import Foundation

struct Activity: Codable, Identifiable, Equatable {
    var id = UUID()
    var title: String
    var description: String
    var completionCount = 0
    
    static let example = Activity(title: "Example activity", description: "This is an example activity.")
}
