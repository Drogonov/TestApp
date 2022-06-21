//
//  NetworkService.swift
//  TestApp
//
//  Created by Anton Vlezko on 21.06.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Moya

final class NetworkService: NetworkServiceProtocol, Injectable {
    
    private let provider = MoyaProvider<NetworkAPI>()
    
    // MARK: - Methods
    
    func getCapsulesList(completion: @escaping ((Result<[NetworkMo]?, HTMAPIError>) -> Void)) {
        provider.request(
            .getCapsules
        ) { result in
            switch result {
            case .success(let response):
                guard let responseModel = try? response.map([NetworkMo].self) else {
                    completion(.failure(.deserialization))
                    return
                }
                completion(.success(responseModel))
            case .failure(let error):
                print(error)
                completion(.failure(.unknown))
            }
        }
    }
    
    func getCapsule(serial: String, completion: @escaping ((Result<NetworkMo?, HTMAPIError>) -> Void)) {
        provider.request(
            .getCapsule(serial: serial)
        ) { result in
            switch result {
            case .success(let response):
                guard let responseModel = try? response.map(NetworkMo.self) else {
                    completion(.failure(.deserialization))
                    return
                }
                completion(.success(responseModel))
            case .failure(let error):
                print(error)
                completion(.failure(.unknown))
            }
        }
    }
}
