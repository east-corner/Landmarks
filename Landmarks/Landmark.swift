//
//  Landmark.swift
//  Landmarks
//
//  Created by 余杭斌 on 2024/3/16.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
