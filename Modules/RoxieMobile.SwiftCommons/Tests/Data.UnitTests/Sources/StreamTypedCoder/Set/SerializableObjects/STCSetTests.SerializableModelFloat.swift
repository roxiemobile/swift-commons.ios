// ----------------------------------------------------------------------------
//
//  STCFloat.swift
//
//  @author     Natalia Mamunina <mamunina-nv@roxiemobile.com>
//  @copyright  Copyright (c) 2019, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.ru/
//
// ----------------------------------------------------------------------------

@testable import SwiftCommonsObjC
import XCTest

// ----------------------------------------------------------------------------

extension STCSetTests
{
// MARK: - Tests

    func testSerializableModel_Float() {

        weak var weakSelf = self

        let _f32Object: Set<STCFloat32Model> = [STCFloat32Model.shared]

        // Positive
        assertNoThrow {
            // Encode
            let data = NSMutableData()
            StreamTypedEncoder(forWritingWith: data).encodeRootObject(_f32Object)
            XCTAssertNotEqual(data, NSMutableData())

            // Decode
            var _f32Result = Set<STCFloat32Model>()
            if let value = StreamTypedDecoder(forReadingWith: data as Data)?.decodeObject() as? NSSet {
                weakSelf?.transform(set: &_f32Result, from: value)
            }
            XCTAssertEqual(_f32Object, _f32Result)
        }

        // --

        let _f64Object: Set<STCFloat64Model> = [STCFloat64Model.shared]

        // Positive
        assertNoThrow {
            // Encode
            let data = NSMutableData()
            StreamTypedEncoder(forWritingWith: data).encodeRootObject(_f64Object)
            XCTAssertNotEqual(data, NSMutableData())

            // Decode
            var _f64Result = Set<STCFloat64Model>()
            if let value = StreamTypedDecoder(forReadingWith: data as Data)?.decodeObject() as? NSSet {
                weakSelf?.transform(set: &_f64Result, from: value)
            }
            XCTAssertEqual(_f64Object, _f64Result)
        }

        // --

        let _fObject: Set<STCFloatModel> = [STCFloatModel.shared]

        // Positive
        assertNoThrow {
            // Encode
            let data = NSMutableData()
            StreamTypedEncoder(forWritingWith: data).encodeRootObject(_fObject)
            XCTAssertNotEqual(data, NSMutableData())

            // Decode
            var _fResult = Set<STCFloatModel>()
            if let value = StreamTypedDecoder(forReadingWith: data as Data)?.decodeObject() as? NSSet {
                weakSelf?.transform(set: &_fResult, from: value)
            }
            XCTAssertEqual(_fObject, _fResult)
        }
    }
}

// ----------------------------------------------------------------------------