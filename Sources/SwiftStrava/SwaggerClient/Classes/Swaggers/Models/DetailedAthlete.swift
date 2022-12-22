//
// DetailedAthlete.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DetailedAthlete: Codable {

    public enum MeasurementPreference: String, Codable { 
        case feet = "feet"
        case meters = "meters"
    }
    /** The athlete&#x27;s follower count. */
    public var followerCount: Int?
    /** The athlete&#x27;s friend count. */
    public var friendCount: Int?
    /** The athlete&#x27;s preferred unit system. */
    public var measurementPreference: MeasurementPreference?
    /** The athlete&#x27;s FTP (Functional Threshold Power). */
    public var ftp: Int?
    /** The athlete&#x27;s weight. */
    public var weight: Float?
    /** The athlete&#x27;s clubs. */
    public var clubs: [SummaryClub]?
    /** The athlete&#x27;s bikes. */
    public var bikes: [SummaryGear]?
    /** The athlete&#x27;s shoes. */
    public var shoes: [SummaryGear]?

    public init(followerCount: Int? = nil, friendCount: Int? = nil, measurementPreference: MeasurementPreference? = nil, ftp: Int? = nil, weight: Float? = nil, clubs: [SummaryClub]? = nil, bikes: [SummaryGear]? = nil, shoes: [SummaryGear]? = nil) {
        self.followerCount = followerCount
        self.friendCount = friendCount
        self.measurementPreference = measurementPreference
        self.ftp = ftp
        self.weight = weight
        self.clubs = clubs
        self.bikes = bikes
        self.shoes = shoes
    }

    public enum CodingKeys: String, CodingKey { 
        case followerCount = "follower_count"
        case friendCount = "friend_count"
        case measurementPreference = "measurement_preference"
        case ftp
        case weight
        case clubs
        case bikes
        case shoes
    }

}