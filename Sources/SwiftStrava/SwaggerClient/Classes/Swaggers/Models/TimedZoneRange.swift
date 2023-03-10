//
// TimedZoneRange.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A union type representing the time spent in a given zone. */

public struct TimedZoneRange: Codable {

    /** The minimum value in the range. */
    public var min: Int?
    /** The maximum value in the range. */
    public var max: Int?
    /** The number of seconds spent in this zone */
    public var time: Int?

    public init(min: Int? = nil, max: Int? = nil, time: Int? = nil) {
        self.min = min
        self.max = max
        self.time = time
    }


}
