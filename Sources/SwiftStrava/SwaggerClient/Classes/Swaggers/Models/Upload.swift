//
// Upload.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct Upload: Codable {

    /** The unique identifier of the upload */
    public var _id: Int64?
    /** The unique identifier of the upload in string format */
    public var idStr: String?
    /** The external identifier of the upload */
    public var externalId: String?
    /** The error associated with this upload */
    public var error: String?
    /** The status of this upload */
    public var status: String?
    /** The identifier of the activity this upload resulted into */
    public var activityId: Int64?

    public init(_id: Int64? = nil, idStr: String? = nil, externalId: String? = nil, error: String? = nil, status: String? = nil, activityId: Int64? = nil) {
        self._id = _id
        self.idStr = idStr
        self.externalId = externalId
        self.error = error
        self.status = status
        self.activityId = activityId
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case idStr = "id_str"
        case externalId = "external_id"
        case error
        case status
        case activityId = "activity_id"
    }

}