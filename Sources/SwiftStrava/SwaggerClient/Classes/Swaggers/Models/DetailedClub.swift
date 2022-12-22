//
// DetailedClub.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct DetailedClub: Codable {

    public enum Membership: String, Codable { 
        case member = "member"
        case pending = "pending"
    }
    /** The membership status of the logged-in athlete. */
    public var membership: Membership?
    /** Whether the currently logged-in athlete is an administrator of this club. */
    public var admin: Bool?
    /** Whether the currently logged-in athlete is the owner of this club. */
    public var owner: Bool?
    /** The number of athletes in the club that the logged-in athlete follows. */
    public var followingCount: Int?

    public init(membership: Membership? = nil, admin: Bool? = nil, owner: Bool? = nil, followingCount: Int? = nil) {
        self.membership = membership
        self.admin = admin
        self.owner = owner
        self.followingCount = followingCount
    }

    public enum CodingKeys: String, CodingKey { 
        case membership
        case admin
        case owner
        case followingCount = "following_count"
    }

}
