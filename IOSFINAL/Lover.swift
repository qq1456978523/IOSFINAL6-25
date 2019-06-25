//
//  Lover.swift
//  IOSFINAL
//
//  Created by User16 on 2019/6/25.
//  Copyright © 2019 User16. All rights reserved.
//

import Foundation

struct Lover: Codable {
    var info:String
    var imageName: String
    
    static let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
    static func saveToFile(lovers: [Lover]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(lovers) {
            let url = Lover.documentsDirectory.appendingPathComponent("lover").appendingPathExtension("plist")
            try? data.write(to: url)
        }
    }
    
    static func readLoversFromFile() -> [Lover]? {
        let propertyDecoder = PropertyListDecoder()
        let url = Lover.documentsDirectory.appendingPathComponent("lover").appendingPathExtension("plist")
        if let data = try? Data(contentsOf: url), let lovers = try? propertyDecoder.decode([Lover].self, from: data) {
            return lovers
        } else {
            return nil
        }
    }
    
}
