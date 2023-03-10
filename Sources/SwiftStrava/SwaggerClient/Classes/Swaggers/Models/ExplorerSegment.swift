//
// ExplorerSegment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ExplorerSegment: Codable {

    public enum ClimbCategoryDesc: String, Codable { 
        case nc = "NC"
        case _4 = "4"
        case _3 = "3"
        case _2 = "2"
        case _1 = "1"
        case hc = "HC"
    }
    /** The unique identifier of this segment */
    public var _id: Int64?
    /** The name of this segment */
    public var name: String?
    /** The category of the climb [0, 5]. Higher is harder ie. 5 is Hors catégorie, 0 is uncategorized in climb_category. If climb_category &#x3D; 5, climb_category_desc &#x3D; HC. If climb_category &#x3D; 2, climb_category_desc &#x3D; 3. */
    public var climbCategory: Int?
    /** The description for the category of the climb */
    public var climbCategoryDesc: ClimbCategoryDesc?
    /** The segment&#x27;s average grade, in percents */
    public var avgGrade: Float?
    public var startLatlng: LatLng?
    public var endLatlng: LatLng?
    /** The segments&#x27;s evelation difference, in meters */
    public var elevDifference: Float?
    /** The segment&#x27;s distance, in meters */
    public var distance: Float?
    /** The polyline of the segment */
    public var points: String?

    public init(_id: Int64? = nil, name: String? = nil, climbCategory: Int? = nil, climbCategoryDesc: ClimbCategoryDesc? = nil, avgGrade: Float? = nil, startLatlng: LatLng? = nil, endLatlng: LatLng? = nil, elevDifference: Float? = nil, distance: Float? = nil, points: String? = nil) {
        self._id = _id
        self.name = name
        self.climbCategory = climbCategory
        self.climbCategoryDesc = climbCategoryDesc
        self.avgGrade = avgGrade
        self.startLatlng = startLatlng
        self.endLatlng = endLatlng
        self.elevDifference = elevDifference
        self.distance = distance
        self.points = points
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case climbCategory = "climb_category"
        case climbCategoryDesc = "climb_category_desc"
        case avgGrade = "avg_grade"
        case startLatlng = "start_latlng"
        case endLatlng = "end_latlng"
        case elevDifference = "elev_difference"
        case distance
        case points
    }

}
