// ----------------------------------------------------------------------------
//
//  CheckTests.GreaterThanOrEqualTo.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

@testable import SwiftCommons
import XCTest

// ----------------------------------------------------------------------------

extension CheckTests
{
// MARK: - Tests

    func testGreaterThanOrEqualTo() {
        let method = "Check.greaterThanOrEqualTo"

        checkThrowsError(method) {
            try Check.greaterThanOrEqualTo(1, 2)
        }

        checkNotThrowsError(method) {
            try Check.greaterThanOrEqualTo(2, 2)
        }
        checkNotThrowsError(method) {
            try Check.greaterThanOrEqualTo(2, 1)
        }
    }
}

// ----------------------------------------------------------------------------
