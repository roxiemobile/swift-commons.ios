// ----------------------------------------------------------------------------
//
//  TransformOperatorsTests.DictionaryMappable.swift
//
//  @author     Natalia Mamunina <MamuninaNV@ekassir.com>
//  @copyright  Copyright (c) 2018, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

@testable import SwiftCommonsData
import XCTest

// ----------------------------------------------------------------------------
// MARK: - Dictionary of Mappable objects <String, T: Mappable> with a transform
// ----------------------------------------------------------------------------

extension TransformOperatorsTests
{
// MARK: - Tests

    func testTransformDictionaryMappableObjectsToJSON() {

        let map = Map(mappingType: .toJSON, JSON: [:])
        let objectBasicType: [String: ValidTransformMappableObjectModel] = [JsonKeys.validObject: ValidTransformMappableObjectModel()]

        objectBasicType >>> (map[JsonKeys.validObject], ValidModelTransform.shared)

        // Positive
        XCTAssertNotNil(map.JSON[JsonKeys.validObject])

        // Negative
        assertExceptionNotNil {
            Constants.invalidDateObject >>> map[JsonKeys.invalidValue]
        }
    }

    func testTransformDictionaryMappableObjectsFromJSON() {

        let JsonString = Constants.transformDictionaryWithMappableObjects
        let JsonStringNotValid = Constants.transformDictionaryWithInvalidMappableObjects
        let JsonStringEmpty = Constants.transformEmptyDictionaryWithMappableObjects

        let mapValid = Map(mappingType: .fromJSON, JSON: JsonString)
        let mapNotValid = Map(mappingType: .fromJSON, JSON: JsonStringNotValid)
        let mapEmpty = Map(mappingType: .fromJSON, JSON: JsonStringEmpty)

        var objectBasicType: [String: ValidTransformMappableObjectModel] = [:]

        objectBasicType <~ (mapValid[JsonKeys.validObject], ValidModelTransform.shared)

        // Positive
        XCTAssertEqual(objectBasicType[JsonKeys.validObject]?.x, Int.max)

        // Negative
        assertExceptionNotNil {
            objectBasicType <~ (mapNotValid[JsonKeys.invalidValue], ValidModelTransform.shared)
        }
        assertExceptionNotNil {
            objectBasicType <~ (mapValid[JsonKeys.noSuchKey], ValidModelTransform.shared)
        }

        mapValid.JSON[JsonKeys.nilValue] = nil
        assertExceptionNotNil {
            objectBasicType <~ (mapValid[JsonKeys.nilValue], ValidModelTransform.shared)
        }
        assertExceptionNotNil {
            objectBasicType <~ (mapEmpty[JsonKeys.emptyValue], ValidModelTransform.shared)
        }
    }
}

// ----------------------------------------------------------------------------
// MARK: - Optional Dictionary of Mappable object <String, T: Mappable> with a transform
// ----------------------------------------------------------------------------

extension TransformOperatorsTests
{
// MARK: - Tests

    func testTransformDictionaryMappableOptionalObjectsToJSON() {

        let map = Map(mappingType: .toJSON, JSON: [:])
        let objectBasicType: [String: ValidTransformMappableObjectModel]? = [JsonKeys.validObject: ValidTransformMappableObjectModel()]

        objectBasicType >>> (map[JsonKeys.validObject], ValidModelTransform.shared)

        // Positive
        XCTAssertNotNil(map.JSON[JsonKeys.validObject])

        // Negative
        assertExceptionNotNil {
            Constants.invalidDateObject >>> map[JsonKeys.invalidValue]
        }
    }

    func testTransformDictionaryMappableOptionalObjectsFromJSON() {

        let JsonString = Constants.transformDictionaryWithMappableObjects
        let JsonStringNotValid = Constants.transformDictionaryWithInvalidMappableObjects
        let JsonStringEmpty = Constants.transformEmptyDictionaryWithMappableObjects

        let mapValid = Map(mappingType: .fromJSON, JSON: JsonString)
        let mapNotValid = Map(mappingType: .fromJSON, JSON: JsonStringNotValid)
        let mapEmpty = Map(mappingType: .fromJSON, JSON: JsonStringEmpty)

        var objectBasicType: [String: ValidTransformMappableObjectModel]? = nil

        objectBasicType <~ (mapValid[JsonKeys.validObject], ValidModelTransform.shared)

        // Positive
        XCTAssertNotNil(objectBasicType)

        // Negative
        objectBasicType <~ (mapNotValid[JsonKeys.invalidValue], ValidModelTransform.shared)
        XCTAssertNil(objectBasicType)

        objectBasicType <~ (mapValid[JsonKeys.noSuchKey], ValidModelTransform.shared)
        XCTAssertNil(objectBasicType)

        mapValid.JSON[JsonKeys.nilValue] = nil
        objectBasicType <~ (mapValid[JsonKeys.nilValue], ValidModelTransform.shared)
        XCTAssertNil(objectBasicType)

        objectBasicType <~ (mapEmpty[JsonKeys.emptyValue], ValidModelTransform.shared)
        XCTAssertNil(objectBasicType)
    }
}

// ----------------------------------------------------------------------------
// MARK: - Implicitly unwrapped Optional Dictionary of Mappable object <String, T: Mappable> with a transform
// ----------------------------------------------------------------------------

extension TransformOperatorsTests
{
// MARK: - Tests

    func testTransformDictionaryMappableImplicitlyUnwrappedOptionalObjectToJSON() {

        let map = Map(mappingType: .toJSON, JSON: [:])
        var objectBasicType: [String: ValidTransformMappableObjectModel]! = [JsonKeys.validObject: ValidTransformMappableObjectModel()]

        objectBasicType <~ (map[JsonKeys.validObject], ValidModelTransform.shared)

        // Positive
        XCTAssertNotNil(map.JSON[JsonKeys.validObject])

        // Negative
        assertExceptionNotNil {
            Constants.invalidDateObject >>> map[JsonKeys.invalidValue]
        }
    }

    func testTransformDictionaryMappableImplicitlyUnwrappedOptionalObjectFromJSON() {

        let JsonString = Constants.transformDictionaryWithMappableObjects
        let JsonStringNotValid = Constants.transformDictionaryWithInvalidMappableObjects
        let JsonStringEmpty = Constants.transformEmptyDictionaryWithMappableObjects

        let mapValid = Map(mappingType: .fromJSON, JSON: JsonString)
        let mapNotValid = Map(mappingType: .fromJSON, JSON: JsonStringNotValid)
        let mapEmpty = Map(mappingType: .fromJSON, JSON: JsonStringEmpty)

        var objectBasicType: [String: ValidTransformMappableObjectModel]! = [:]

        objectBasicType <~ (mapValid[JsonKeys.validObject], ValidModelTransform.shared)

        // Positive
        XCTAssertEqual(objectBasicType[JsonKeys.validObject]?.x, Int.max)

        // Negative
        assertExceptionNotNil {
            objectBasicType <~ (mapNotValid[JsonKeys.invalidValue], ValidModelTransform.shared)
        }
        assertExceptionNotNil {
            objectBasicType <~ (mapValid[JsonKeys.noSuchKey], ValidModelTransform.shared)
        }

        mapValid.JSON[JsonKeys.nilValue] = nil
        assertExceptionNotNil {
            objectBasicType <~ (mapValid[JsonKeys.nilValue], ValidModelTransform.shared)
        }
        assertExceptionNotNil {
            objectBasicType <~ (mapEmpty[JsonKeys.emptyValue], ValidModelTransform.shared)
        }
    }
}

// ----------------------------------------------------------------------------

