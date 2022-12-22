//
// ExplorerResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ExplorerResponse: Codable {

    /** The set of segments matching an explorer request */
    public var segments: [ExplorerSegment]?

    public init(segments: [ExplorerSegment]? = nil) {
        self.segments = segments
    }


}
