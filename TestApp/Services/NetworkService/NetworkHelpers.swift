//
//  NetworkHelpers.swift
//  TestApp
//
//  Created by Anton Vlezko on 21.06.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Moya

public enum HTMAPIError: Error {
    case deserialization
    case authError
    case invalidData
    case expiredToken
    case userNotFound
    case invalidOTPCode
    
    case unknown
}
