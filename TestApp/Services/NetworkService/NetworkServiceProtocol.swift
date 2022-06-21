//
//  NetworkServiceProtocol.swift
//  TestApp
//
//  Created by Anton Vlezko on 21.06.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Moya

protocol NetworkServiceProtocol {
    func getCapsulesList(
        completion: @escaping ((Result<[NetworkMo]?, HTMAPIError>) -> Void)
    )
    
    func getCapsule(
        serial: String,
        completion: @escaping ((Result<NetworkMo?, HTMAPIError>) -> Void)
    )
}
