//
// AthletesAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class AthletesAPI {
    /**
     Get Authenticated Athlete

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoggedInAthlete(completion: @escaping ((_ data: DetailedAthlete?,_ error: Error?) -> Void)) {
        getLoggedInAthleteWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Authenticated Athlete
     - GET /athlete

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example=""}]

     - returns: RequestBuilder<DetailedAthlete> 
     */
    open class func getLoggedInAthleteWithRequestBuilder() -> RequestBuilder<DetailedAthlete> {
        let path = "/athlete"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DetailedAthlete>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get Zones

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoggedInAthleteZones(completion: @escaping ((_ data: Zones?,_ error: Error?) -> Void)) {
        getLoggedInAthleteZonesWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Zones
     - GET /athlete/zones

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example={
  "heart_rate" : {
    "custom_zones" : true,
    "zones" : [ {
      "min" : 0,
      "max" : 6
    }, {
      "min" : 0,
      "max" : 6
    } ]
  },
  "power" : { }
}}]

     - returns: RequestBuilder<Zones> 
     */
    open class func getLoggedInAthleteZonesWithRequestBuilder() -> RequestBuilder<Zones> {
        let path = "/athlete/zones"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Zones>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get Athlete Stats

     - parameter _id: (path) The identifier of the athlete. Must match the authenticated athlete. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getStats(_id: Int64, completion: @escaping ((_ data: ActivityStats?,_ error: Error?) -> Void)) {
        getStatsWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Athlete Stats
     - GET /athletes/{id}/stats

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example={
  "biggest_ride_distance" : 0.8008281904610115,
  "recent_ride_totals" : {
    "distance" : 5.962134,
    "achievement_count" : 9,
    "count" : 1,
    "elapsed_time" : 2,
    "elevation_gain" : 7.0614014,
    "moving_time" : 5
  },
  "biggest_climb_elevation_gain" : 6.027456183070403
}}]
     - parameter _id: (path) The identifier of the athlete. Must match the authenticated athlete. 

     - returns: RequestBuilder<ActivityStats> 
     */
    open class func getStatsWithRequestBuilder(_id: Int64) -> RequestBuilder<ActivityStats> {
        var path = "/athletes/{id}/stats"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ActivityStats>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Update Athlete

     - parameter weight: (path) The weight of the athlete in kilograms. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateLoggedInAthlete(weight: Float, completion: @escaping ((_ data: DetailedAthlete?,_ error: Error?) -> Void)) {
        updateLoggedInAthleteWithRequestBuilder(weight: weight).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update Athlete
     - PUT /athlete

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example=""}]
     - parameter weight: (path) The weight of the athlete in kilograms. 

     - returns: RequestBuilder<DetailedAthlete> 
     */
    open class func updateLoggedInAthleteWithRequestBuilder(weight: Float) -> RequestBuilder<DetailedAthlete> {
        var path = "/athlete"
        let weightPreEscape = "\(weight)"
        let weightPostEscape = weightPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{weight}", with: weightPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DetailedAthlete>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
