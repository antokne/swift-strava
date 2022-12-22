//
// ActivityZone.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ActivityZone: Codable {

    public enum ModelType: String, Codable { 
        case heartrate = "heartrate"
        case power = "power"
    }
    public var score: Int?
    public var distributionBuckets: TimedZoneDistribution?
    public var type: ModelType?
    public var sensorBased: Bool?
    public var points: Int?
    public var customZones: Bool?
    public var max: Int?

    public init(score: Int? = nil, distributionBuckets: TimedZoneDistribution? = nil, type: ModelType? = nil, sensorBased: Bool? = nil, points: Int? = nil, customZones: Bool? = nil, max: Int? = nil) {
        self.score = score
        self.distributionBuckets = distributionBuckets
        self.type = type
        self.sensorBased = sensorBased
        self.points = points
        self.customZones = customZones
        self.max = max
    }

    public enum CodingKeys: String, CodingKey { 
        case score
        case distributionBuckets = "distribution_buckets"
        case type
        case sensorBased = "sensor_based"
        case points
        case customZones = "custom_zones"
        case max
    }

}
