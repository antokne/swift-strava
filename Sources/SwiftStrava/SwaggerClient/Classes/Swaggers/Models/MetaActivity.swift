//
// MetaActivity.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct MetaActivity: Codable {

    /** The unique identifier of the activity */
    public var _id: Int64?

    public init(_id: Int64? = nil) {
        self._id = _id
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
    }

}