//
//  FileManager-DocumentsDirectory.swift
//  Bucketlist
//
//  Created by drewdev on 7/4/23.
//

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
}
