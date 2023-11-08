//
//  iTunesAPI.swift
//  itunesRx
//
//  Created by 김태윤 on 2023/11/08.
//

import Foundation
import Alamofire
extension API{
    enum iTunesSearch:URLRequestConvertible{
        case musicVideo(term:String, limit:Int?), music(term:String,limit:Int?)
        var baseURL: URL{ URL(string: API.baseURL)!}
        var endPoint:String { "/search"}
        
        var method: HTTPMethod{
            return .get
        }
        var queries: Queries{
            var queries = Queries()
            switch self{
            case let .musicVideo(term: term,limit:limit):
                queries["term"] = term
                queries["media"] = "musicVideo"
                queries["limit"] = String(limit ?? 30)
            case let .music(term: term,limit: limit):
                queries["term"] = term
                queries["media"] = "music"
                queries["limit"] = String(limit ?? 30)
            }
            return queries
        }
        
        func asURLRequest() throws -> URLRequest {
            let url = baseURL.appendingPathComponent(endPoint)
            guard var urlComponents = URLComponents(url: url,resolvingAgainstBaseURL: true) else {
                return URLRequest(url: url)
            }
            urlComponents.queryItems = queries.map { URLQueryItem(name: $0, value: $1) }
            var request = URLRequest(url: urlComponents.url!)
            request.method = self.method
            return request
        }
        
    }
}
