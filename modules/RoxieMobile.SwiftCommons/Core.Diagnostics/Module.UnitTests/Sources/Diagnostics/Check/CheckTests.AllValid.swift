// ----------------------------------------------------------------------------
//
//  CheckTests.AllValid.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

@testable import SwiftCommonsCoreDiagnostics
import XCTest

// ----------------------------------------------------------------------------

/*
using System.Diagnostics.CodeAnalysis;
using RoxieMobile.CSharpCommons.Abstractions.Models;
using RoxieMobile.CSharpCommons.Diagnostics.UnitTests.Models;
using Xunit;
using static RoxieMobile.CSharpCommons.Extensions.ArrayUtils;

namespace RoxieMobile.CSharpCommons.Diagnostics.UnitTests.Diagnostics
{
    [SuppressMessage("ReSharper", "ExpressionIsAlwaysNull")]
    [SuppressMessage("ReSharper", "SuggestVarOrType_Elsewhere")]
    public partial class CheckTests
    {
// MARK: - Tests

        [Theory]
        [InlineData("Check.AllValid")]
        public void AllValid(string method)
        {
            IValidatable validObject = new ValidModel();
            IValidatable nilObject = null;
            IValidatable notValidObject = new NotValidModel();

            IValidatable[] array = ToArray(validObject);
            IValidatable[] nilArray = null;
            IValidatable[] emptyArray = {};


            CheckThrowsException(method,
                () => Check.AllValid(ToArray(notValidObject)));
            CheckThrowsException(method,
                () => Check.AllValid(ToArray(validObject, nilObject)));
            CheckThrowsException(method,
                () => Check.AllValid(ToArray(validObject, notValidObject)));

            CheckNotThrowsException(method,
                () => Check.AllValid(array));
            CheckNotThrowsException(method,
                () => Check.AllValid(nilArray));
            CheckNotThrowsException(method,
                () => Check.AllValid(emptyArray));
        }
    }
}
*/

extension CheckTests
{
// MARK: - Tests

    func testAllValid_Array()
    {
//        let validObject: Validatable = ValidModel()
//        let notValidObject: Validatable = NotValidModel()
//
//        let array: [Validatable]? = [validObject]
//        let nilArray: [Validatable]? = nil
//        let emptyArray = [Validatable]()
//
//
//        checkThrowsError("allValid_Array") {
//            try Check.allValid([notValidObject])
//        }
//        checkThrowsError("allValid_Array") {
//            try Check.allValid([validObject, notValidObject])
//        }
//
//        checkNotThrowsError("allValid_Array") {
//            try Check.allValid(array)
//        }
//        checkNotThrowsError("allValid_Array") {
//            try Check.allValid(nilArray)
//        }
//        checkNotThrowsError("allValid_Array") {
//            try Check.allValid(emptyArray)
//        }
    }

    func testAllValid_ArrayOfOptionals()
    {
//        let validObject: Validatable? = ValidModel()
//        let nilObject: Validatable? = nil
//        let notValidObject: Validatable? = NotValidModel()
//
//        let array: [Validatable?]? = [validObject]
//        let nilArray: [Validatable?]? = nil
//        let emptyArray = [Validatable?]()
//
//
//        checkThrowsError("allValid_ArrayOfOptionals") {
//            try Check.allValid([notValidObject])
//        }
//        checkThrowsError("allValid_ArrayOfOptionals") {
//            try Check.allValid([validObject, nilObject])
//        }
//        checkThrowsError("allValid_ArrayOfOptionals") {
//            try Check.allValid([validObject, notValidObject])
//        }
//
//        checkNotThrowsError("allValid_ArrayOfOptionals") {
//            try Check.allValid(array)
//        }
//        checkNotThrowsError("allValid_ArrayOfOptionals") {
//            try Check.allValid(nilArray)
//        }
//        checkNotThrowsError("allValid_ArrayOfOptionals") {
//            try Check.allValid(emptyArray)
//        }
    }
}

// ----------------------------------------------------------------------------