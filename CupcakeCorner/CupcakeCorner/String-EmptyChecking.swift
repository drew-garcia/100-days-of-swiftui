//
//  String-EmptyChecking.swift
//  CupcakeCorner
//
//  Created by drewdev on 6/22/23.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
