//
//  NetworkMo.swift
//  TestApp
//
//  Created by Anton Vlezko on 21.06.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

// MARK: - NetworkMo

struct NetworkMo: Codable {
    let capsuleID: String
    let capsuleSerial: String?
    let details: String?
    let landings: Int?
    let missions: [Mission]?
    let originalLaunch: String?
    let originalLaunchUnix: Int?
    let reuseCount: Int?
    let status: String?
    let type: String?

    enum CodingKeys: String, CodingKey {
        case capsuleID = "capsule_id"
        case capsuleSerial = "capsule_serial"
        case details = "details"
        case landings = "landings"
        case missions = "missions"
        case originalLaunch = "original_launch"
        case originalLaunchUnix = "original_launch_unix"
        case reuseCount = "reuse_count"
        case status = "status"
        case type = "type"
    }
}

// MARK: - Mission

struct Mission: Codable {
    let name: String
    let flight: Int
}
