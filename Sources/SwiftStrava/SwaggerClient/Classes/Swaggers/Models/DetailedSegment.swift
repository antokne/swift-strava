//
// DetailedSegment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DetailedSegment: Codable {

    public enum ActivityType: String, Codable { 
        case ride = "Ride"
        case run = "Run"
    }
    /** The unique identifier of this segment */
    public var _id: Int64?
    /** The name of this segment */
    public var name: String?
    public var activityType: ActivityType?
    /** The segment&#x27;s distance, in meters */
    public var distance: Float?
    /** The segment&#x27;s average grade, in percents */
    public var averageGrade: Float?
    /** The segments&#x27;s maximum grade, in percents */
    public var maximumGrade: Float?
    /** The segments&#x27;s highest elevation, in meters */
    public var elevationHigh: Float?
    /** The segments&#x27;s lowest elevation, in meters */
    public var elevationLow: Float?
    public var startLatlng: LatLng?
    public var endLatlng: LatLng?
    /** The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. */
    public var climbCategory: Int?
    /** The segments&#x27;s city. */
    public var city: String?
    /** The segments&#x27;s state or geographical region. */
    public var state: String?
    /** The segment&#x27;s country. */
    public var country: String?
    /** Whether this segment is private. */
    public var _private: Bool?
    public var athletePrEffort: SummaryPRSegmentEffort?
    public var athleteSegmentStats: SummarySegmentEffort?
    /** The time at which the segment was created. */
    public var createdAt: Date?
    /** The time at which the segment was last updated. */
    public var updatedAt: Date?
    /** The segment&#x27;s total elevation gain. */
    public var totalElevationGain: Float?
    public var map: PolylineMap?
    /** The total number of efforts for this segment */
    public var effortCount: Int?
    /** The number of unique athletes who have an effort for this segment */
    public var athleteCount: Int?
    /** Whether this segment is considered hazardous */
    public var hazardous: Bool?
    /** The number of stars for this segment */
    public var starCount: Int?

    public init(_id: Int64? = nil, name: String? = nil, activityType: ActivityType? = nil, distance: Float? = nil, averageGrade: Float? = nil, maximumGrade: Float? = nil, elevationHigh: Float? = nil, elevationLow: Float? = nil, startLatlng: LatLng? = nil, endLatlng: LatLng? = nil, climbCategory: Int? = nil, city: String? = nil, state: String? = nil, country: String? = nil, _private: Bool? = nil, athletePrEffort: SummaryPRSegmentEffort? = nil, athleteSegmentStats: SummarySegmentEffort? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, totalElevationGain: Float? = nil, map: PolylineMap? = nil, effortCount: Int? = nil, athleteCount: Int? = nil, hazardous: Bool? = nil, starCount: Int? = nil) {
        self._id = _id
        self.name = name
        self.activityType = activityType
        self.distance = distance
        self.averageGrade = averageGrade
        self.maximumGrade = maximumGrade
        self.elevationHigh = elevationHigh
        self.elevationLow = elevationLow
        self.startLatlng = startLatlng
        self.endLatlng = endLatlng
        self.climbCategory = climbCategory
        self.city = city
        self.state = state
        self.country = country
        self._private = _private
        self.athletePrEffort = athletePrEffort
        self.athleteSegmentStats = athleteSegmentStats
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.totalElevationGain = totalElevationGain
        self.map = map
        self.effortCount = effortCount
        self.athleteCount = athleteCount
        self.hazardous = hazardous
        self.starCount = starCount
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case activityType = "activity_type"
        case distance
        case averageGrade = "average_grade"
        case maximumGrade = "maximum_grade"
        case elevationHigh = "elevation_high"
        case elevationLow = "elevation_low"
        case startLatlng = "start_latlng"
        case endLatlng = "end_latlng"
        case climbCategory = "climb_category"
        case city
        case state
        case country
        case _private = "private"
        case athletePrEffort = "athlete_pr_effort"
        case athleteSegmentStats = "athlete_segment_stats"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case totalElevationGain = "total_elevation_gain"
        case map
        case effortCount = "effort_count"
        case athleteCount = "athlete_count"
        case hazardous
        case starCount = "star_count"
    }

}
