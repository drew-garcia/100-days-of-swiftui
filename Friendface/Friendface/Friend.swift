//
//  Friend.swift
//  Friendface
//
//  Created by drewdev on 7/1/23.
//

import Foundation

struct Friend: Identifiable, Codable {
    let id: UUID
    let name: String
}
