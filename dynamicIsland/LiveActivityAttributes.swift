//
//  LiveActivityAttributes.swift
//  dynamicIsland
//
//  Created by Victor Miranda on 16/01/23.
//

import Foundation
import ActivityKit

struct PacmanAttributes: ActivityAttributes {
    public typealias PacmanTrackingStatus = ContentState
    
    public struct ContentState: Codable, Hashable {
        var startTime: Date?
    }
}

