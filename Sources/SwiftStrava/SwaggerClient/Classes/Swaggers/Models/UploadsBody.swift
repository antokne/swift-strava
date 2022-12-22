//
// UploadsBody.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UploadsBody: Codable {

    public enum DataType: String, Codable { 
        case fit = "fit"
        case fitGz = "fit.gz"
        case tcx = "tcx"
        case tcxGz = "tcx.gz"
        case gpx = "gpx"
        case gpxGz = "gpx.gz"
    }
    /** The uploaded file. */
    public var file: Data?
    /** The desired name of the resulting activity. */
    public var name: String?
    /** The desired description of the resulting activity. */
    public var _description: String?
    /** Whether the resulting activity should be marked as having been performed on a trainer. */
    public var trainer: String?
    /** Whether the resulting activity should be tagged as a commute. */
    public var commute: String?
    /** The format of the uploaded file. */
    public var dataType: DataType?
    /** The desired external identifier of the resulting activity. */
    public var externalId: String?

    public init(file: Data? = nil, name: String? = nil, _description: String? = nil, trainer: String? = nil, commute: String? = nil, dataType: DataType? = nil, externalId: String? = nil) {
        self.file = file
        self.name = name
        self._description = _description
        self.trainer = trainer
        self.commute = commute
        self.dataType = dataType
        self.externalId = externalId
    }

    public enum CodingKeys: String, CodingKey { 
        case file
        case name
        case _description = "description"
        case trainer
        case commute
        case dataType = "data_type"
        case externalId = "external_id"
    }

}
