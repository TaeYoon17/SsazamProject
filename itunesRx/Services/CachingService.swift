//
//  CachingService.swift
//  SsamzangProject
//
//  Created by 김태윤 on 2023/11/08.
//

import Foundation
enum MediaType{
    case shortVideo
    case image
}
final class CachingService{
    static let shared = CachingService()
    private init(){}
}
