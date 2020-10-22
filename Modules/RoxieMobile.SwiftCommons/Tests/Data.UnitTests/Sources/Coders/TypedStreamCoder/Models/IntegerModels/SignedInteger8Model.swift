// ----------------------------------------------------------------------------
//
//  SignedInteger8Model.swift
//
//  @author     Natalia Mamunina <mamunina-nv@roxiemobile.com>
//  @copyright  Copyright (c) 2019, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.ru/
//
// ----------------------------------------------------------------------------

import SwiftCommonsData

// ----------------------------------------------------------------------------

class SignedInteger8Model: ValidatableModel {
// MARK: - Construction

    static let shared = try! SignedInteger8Model(from: Constants.signedInteger8ModelValue)

// MARK: - Properties

    private(set) var int8: Int8 = 0

// MARK: - Methods

    open override func map(with map: Map) {
        super.map(with: map)

        // (De)serialize to/from json
        self.int8 <~ map[JsonKeys.int8]
    }
}

// ----------------------------------------------------------------------------
