//
// SegmentsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SegmentsAPI {
    /**
     * enum for parameter activityType
     */
    public enum ActivityType_exploreSegments: String { 
        case running = "running"
        case riding = "riding"
    }

    /**
     Explore segments

     - parameter bounds: (query) The latitude and longitude for two points describing a rectangular boundary for the search: [southwest corner latitutde, southwest corner longitude, northeast corner latitude, northeast corner longitude] 
     - parameter activityType: (query) Desired activity type. (optional)
     - parameter minCat: (query) The minimum climbing category. (optional)
     - parameter maxCat: (query) The maximum climbing category. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func exploreSegments(bounds: [Float], activityType: ActivityType_exploreSegments? = nil, minCat: Int? = nil, maxCat: Int? = nil, completion: @escaping ((_ data: ExplorerResponse?,_ error: Error?) -> Void)) {
        exploreSegmentsWithRequestBuilder(bounds: bounds, activityType: activityType, minCat: minCat, maxCat: maxCat).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Explore segments
     - GET /segments/explore

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example={
  "segments" : [ {
    "distance" : 2.302136,
    "climb_category" : 3,
    "climb_category_desc" : "NC",
    "name" : "name",
    "id" : 0,
    "elev_difference" : 5.637377,
    "avg_grade" : 1.4658129,
    "start_latlng" : [ 5.962134, 5.962134 ],
    "points" : "points"
  }, {
    "distance" : 2.302136,
    "climb_category" : 3,
    "climb_category_desc" : "NC",
    "name" : "name",
    "id" : 0,
    "elev_difference" : 5.637377,
    "avg_grade" : 1.4658129,
    "start_latlng" : [ 5.962134, 5.962134 ],
    "points" : "points"
  } ]
}}]
     - parameter bounds: (query) The latitude and longitude for two points describing a rectangular boundary for the search: [southwest corner latitutde, southwest corner longitude, northeast corner latitude, northeast corner longitude] 
     - parameter activityType: (query) Desired activity type. (optional)
     - parameter minCat: (query) The minimum climbing category. (optional)
     - parameter maxCat: (query) The maximum climbing category. (optional)

     - returns: RequestBuilder<ExplorerResponse> 
     */
    open class func exploreSegmentsWithRequestBuilder(bounds: [Float], activityType: ActivityType_exploreSegments? = nil, minCat: Int? = nil, maxCat: Int? = nil) -> RequestBuilder<ExplorerResponse> {
        let path = "/segments/explore"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "bounds": bounds, 
                        "activity_type": activityType?.rawValue, 
                        "min_cat": minCat?.encodeToJSON(), 
                        "max_cat": maxCat?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<ExplorerResponse>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     List Starred Segments

     - parameter page: (query) Page number. Defaults to 1. (optional)
     - parameter perPage: (query) Number of items per page. Defaults to 30. (optional, default to 30)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getLoggedInAthleteStarredSegments(page: Int? = nil, perPage: Int? = nil, completion: @escaping ((_ data: [SummarySegment]?,_ error: Error?) -> Void)) {
        getLoggedInAthleteStarredSegmentsWithRequestBuilder(page: page, perPage: perPage).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     List Starred Segments
     - GET /segments/starred

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example=[ {
  "country" : "country",
  "private" : true,
  "distance" : 6.0274563,
  "average_grade" : 1.4658129,
  "maximum_grade" : 5.962134,
  "climb_category" : 9,
  "city" : "city",
  "elevation_high" : 5.637377,
  "athlete_pr_effort" : {
    "pr_elapsed_time" : 2,
    "pr_date" : "2000-01-23T04:56:07.000+00:00",
    "effort_count" : 4,
    "pr_activity_id" : 3
  },
  "athlete_segment_stats" : {
    "distance" : 1.4894159,
    "start_date_local" : "2000-01-23T04:56:07.000+00:00",
    "activity_id" : 1,
    "elapsed_time" : 1,
    "is_kom" : true,
    "id" : 7,
    "start_date" : "2000-01-23T04:56:07.000+00:00"
  },
  "start_latlng" : [ 7.0614014, 7.0614014 ],
  "elevation_low" : 2.302136,
  "activity_type" : "Ride",
  "name" : "name",
  "id" : 0,
  "state" : "state"
}, {
  "country" : "country",
  "private" : true,
  "distance" : 6.0274563,
  "average_grade" : 1.4658129,
  "maximum_grade" : 5.962134,
  "climb_category" : 9,
  "city" : "city",
  "elevation_high" : 5.637377,
  "athlete_pr_effort" : {
    "pr_elapsed_time" : 2,
    "pr_date" : "2000-01-23T04:56:07.000+00:00",
    "effort_count" : 4,
    "pr_activity_id" : 3
  },
  "athlete_segment_stats" : {
    "distance" : 1.4894159,
    "start_date_local" : "2000-01-23T04:56:07.000+00:00",
    "activity_id" : 1,
    "elapsed_time" : 1,
    "is_kom" : true,
    "id" : 7,
    "start_date" : "2000-01-23T04:56:07.000+00:00"
  },
  "start_latlng" : [ 7.0614014, 7.0614014 ],
  "elevation_low" : 2.302136,
  "activity_type" : "Ride",
  "name" : "name",
  "id" : 0,
  "state" : "state"
} ]}]
     - parameter page: (query) Page number. Defaults to 1. (optional)
     - parameter perPage: (query) Number of items per page. Defaults to 30. (optional, default to 30)

     - returns: RequestBuilder<[SummarySegment]> 
     */
    open class func getLoggedInAthleteStarredSegmentsWithRequestBuilder(page: Int? = nil, perPage: Int? = nil) -> RequestBuilder<[SummarySegment]> {
        let path = "/segments/starred"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "page": page?.encodeToJSON(), 
                        "per_page": perPage?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<[SummarySegment]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get Segment

     - parameter _id: (path) The identifier of the segment. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getSegmentById(_id: Int64, completion: @escaping ((_ data: DetailedSegment?,_ error: Error?) -> Void)) {
        getSegmentByIdWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get Segment
     - GET /segments/{id}

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example=""}]
     - parameter _id: (path) The identifier of the segment. 

     - returns: RequestBuilder<DetailedSegment> 
     */
    open class func getSegmentByIdWithRequestBuilder(_id: Int64) -> RequestBuilder<DetailedSegment> {
        var path = "/segments/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DetailedSegment>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Star Segment

     - parameter starred: (form)  
     - parameter _id: (path) The identifier of the segment to star. 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func starSegment(starred: Bool, _id: Int64, completion: @escaping ((_ data: DetailedSegment?,_ error: Error?) -> Void)) {
        starSegmentWithRequestBuilder(starred: starred, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Star Segment
     - PUT /segments/{id}/starred

     - OAuth:
       - type: oauth2
       - name: strava_oauth
     - examples: [{contentType=application/json, example=""}]
     - parameter starred: (form)  
     - parameter _id: (path) The identifier of the segment to star. 

     - returns: RequestBuilder<DetailedSegment> 
     */
    open class func starSegmentWithRequestBuilder(starred: Bool, _id: Int64) -> RequestBuilder<DetailedSegment> {
        var path = "/segments/{id}/starred"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let formParams: [String:Any?] = [
                "starred": starred
        ]

        let nonNullParameters = APIHelper.rejectNil(formParams)
        let parameters = APIHelper.convertBoolToString(nonNullParameters)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DetailedSegment>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
