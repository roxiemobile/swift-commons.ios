// ----------------------------------------------------------------------------
//
//  MessagePackCoderTests.BasicTypes.swift
//
//  @author     Aleksandr Serov <serov-ae@roxiemobile.com>
//  @copyright  Copyright (c) 2020, Roxie Mobile Ltd. All rights reserved.
//  @link       https://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

@testable import SwiftCommonsData
import SwiftCommonsLang
import XCTest

// ----------------------------------------------------------------------------

extension MessagePackCoderTests {

// MARK: - Tests

    func testBasicType_Boolean() {

        assertNoThrow {
            let value: Bool = true
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
    }

    func testBasicType_SignedInteger() {

        assertNoThrow {
            let value: Int8 = Int8.min
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: Int16 = Int16.min
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: Int32 = Int32.min
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: Int64 = Int64.min
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: Int = Int.min
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
    }

    func testBasicType_UnsignedInteger() {

        assertNoThrow {
            let value: UInt8 = UInt8.max
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: UInt16 = UInt16.max
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: UInt32 = UInt32.max
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: UInt64 = UInt64.max
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: UInt = UInt.max
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
    }

    func testBasicType_Float() {

        assertNoThrow {
            let value: Float32 = Float32.pi
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: Float64 = Float64.pi
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
        assertNoThrow {
            let value: Float = Float.pi
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
    }

    func testBasicType_Double() {

        assertNoThrow {
            let value: Double = Double.pi
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
    }

    func testBasicType_String() {

        assertNoThrow {
            let value: String = Constants.stringValue
            XCTAssertEqual(value, self.cloneSimpleObject(value))
        }
    }
}
