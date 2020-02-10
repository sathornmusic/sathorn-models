//
//  SathornStation.swift
//  Models
//
//  Created by Stephen Bodnar on 1/29/20.
//  Copyright © 2020 Stephen Bodnar. All rights reserved.
//

import Foundation

public typealias SathornStation = String

public class AppStationsResponse: Decodable {
    public var featured: [SathornStation]
    public var categories: [StationCategoryData]
}


public class StationCategoryData: Decodable {
    public var name: String
    public var stations: [SathornStation]
    
    public init(name: String, stations: [SathornStation]) {
        self.name = name
        self.stations = stations
    }
}
