//
//  NetworkAPI.swift
//  TestApp
//
//  Created by Anton Vlezko on 21.06.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Moya

enum NetworkAPI {
    case getCapsules
    case getCapsule(serial: String)
}

extension NetworkAPI: TargetType {
    var baseURL: URL {
        URL(string: "https://api.spacexdata.com/v3")!
    }
    
    var path: String {
        switch self {
        case .getCapsules:
            return "/capsules"
        case .getCapsule(serial: let serial):
            return "/capsules/" + serial
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getCapsules,
             .getCapsule:
            return .get
        }
    }
    
    var sampleData: Data {
        Data()
    }
    
    var task: Task {
        switch self {
        default: return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        nil
    }
}
