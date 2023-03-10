//
// ActivityTotal.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A roll-up of metrics pertaining to a set of activities. Values are in seconds and meters. */

public struct ActivityTotal: Codable {

    /** The number of activities considered in this total. */
    public var count: Int?
    /** The total distance covered by the considered activities. */
    public var distance: Float?
    /** The total moving time of the considered activities. */
    public var movingTime: Int?
    /** The total elapsed time of the considered activities. */
    public var elapsedTime: Int?
    /** The total elevation gain of the considered activities. */
    public var elevationGain: Float?
    /** The total number of achievements of the considered activities. */
    public var achievementCount: Int?

    public init(count: Int? = nil, distance: Float? = nil, movingTime: Int? = nil, elapsedTime: Int? = nil, elevationGain: Float? = nil, achievementCount: Int? = nil) {
        self.count = count
        self.distance = distance
        self.movingTime = movingTime
        self.elapsedTime = elapsedTime
        self.elevationGain = elevationGain
        self.achievementCount = achievementCount
    }

    public enum CodingKeys: String, CodingKey { 
        case count
        case distance
        case movingTime = "moving_time"
        case elapsedTime = "elapsed_time"
        case elevationGain = "elevation_gain"
        case achievementCount = "achievement_count"
    }

}
