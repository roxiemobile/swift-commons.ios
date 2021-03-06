// ----------------------------------------------------------------------------
//
//  Int64Model.swift
//
//  @author     Natalia Mamunina <mamunina-nv@roxiemobile.com>
//  @copyright  Copyright (c) 2019, Roxie Mobile Ltd. All rights reserved.
//  @link       https://www.roxiemobile.ru/
//
// ----------------------------------------------------------------------------

import SwiftCommonsData

// ----------------------------------------------------------------------------

class Int64Model: ValidatableModel {

// MARK: - Construction

    static let shared = try! Int64Model(from: Constants.integerValues)

// MARK: - Properties

    private(set) var int64: Int64 = 0

// MARK: - Methods

    open override func map(with map: Map) {
        super.map(with: map)

        // (De)serialize to/from json
        self.int64 <~ map[JsonKeys.int64]
    }
}
