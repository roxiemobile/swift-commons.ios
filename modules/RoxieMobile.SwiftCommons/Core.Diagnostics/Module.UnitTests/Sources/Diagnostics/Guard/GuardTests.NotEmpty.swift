// ----------------------------------------------------------------------------
//
//  GuardTests.NotEmpty.swift
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
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using Xunit;
using static RoxieMobile.CSharpCommons.Extensions.ArrayUtils;

namespace RoxieMobile.CSharpCommons.Diagnostics.UnitTests.Diagnostics
{
    [SuppressMessage("ReSharper", "ExpressionIsAlwaysNull")]
    [SuppressMessage("ReSharper", "SuggestVarOrType_Elsewhere")]
    public partial class GuardTests
    {
// MARK: - Tests

        [Theory]
        [InlineData("Guard.NotEmpty")]
        public void NotEmpty(string method)
        {
            const string value = "value";
            const string nilString = null;
            const string emptyString = "";


            GuardThrowsError(method,
                () => Guard.NotEmpty(nilString));
            GuardThrowsError(method,
                () => Guard.NotEmpty(emptyString));

            GuardNotThrowsError(method,
                () => Guard.NotEmpty(value));

            // --

            string[] array = ToArray("value", "otherValue");
            string[] nilArray = null;
            string[] emptyArray = {};

            GuardThrowsError($"{method}_Array",
                () => Guard.NotEmpty(nilArray));
            GuardThrowsError($"{method}_Array",
                () => Guard.NotEmpty(emptyArray));

            GuardNotThrowsError($"{method}_Array",
                () => Guard.NotEmpty(array));

            // --

            List<string> list = ToArray("value", "otherValue").ToList();
            List<string> nilList = null;
            List<string> emptyList = new List<string>();

            GuardThrowsError($"{method}_List",
                () => Guard.NotEmpty(nilList));
            GuardThrowsError($"{method}_List",
                () => Guard.NotEmpty(emptyList));

            GuardNotThrowsError($"{method}_List",
                () => Guard.NotEmpty(list));

            // --

            Dictionary<string, string> map = list.ToDictionary(item => item, item => item);
            Dictionary<string, string> nilMap = null;
            Dictionary<string, string> emptyMap = new Dictionary<string, string>();

            GuardThrowsError($"{method}_Dictionary",
                () => Guard.NotEmpty(nilMap));
            GuardThrowsError($"{method}_Dictionary",
                () => Guard.NotEmpty(emptyMap));

            GuardNotThrowsError($"{method}_Dictionary",
                () => Guard.NotEmpty(map));
        }
    }
}
*/

extension GuardTests
{
// MARK: - Tests

    func testNotEmpty()
    {
//        let string = "value"
//        let nilString: String? = nil
//        let emptyString = ""
//
//
//        guardThrowsException("isNotEmpty") {
//            Guard.notEmpty(nilString)
//        }
//        guardThrowsException("isNotEmpty") {
//            Guard.notEmpty(emptyString)
//        }
//
//        guardNotThrowsException("isNotEmpty") {
//            Guard.notEmpty(string)
//        }
//
//        // --
//
//        let array = ["value", "otherValue"]
//        let nilArray: [String]? = nil
//        let emptyArray = [String]()
//
//        guardThrowsException("isNotEmpty_Array") {
//            Guard.notEmpty(nilArray)
//        }
//        guardThrowsException("isNotEmpty_Array") {
//            Guard.notEmpty(emptyArray)
//        }
//
//        guardNotThrowsException("isNotEmpty_Array") {
//            Guard.notEmpty(array)
//        }
//
//        // --
//
//        let map = ["key": "value", "otherKey": "otherValue"]
//        let nilMap: Dictionary<String, String>? = nil
//        let emptyMap = Dictionary<String, String>()
//
//        guardThrowsException("isNotEmpty_Map") {
//            Guard.notEmpty(nilMap)
//        }
//        guardThrowsException("isNotEmpty_Map") {
//            Guard.notEmpty(emptyMap)
//        }
//
//        guardNotThrowsException("isNotEmpty_Map") {
//            Guard.notEmpty(map)
//        }
    }
}

// ----------------------------------------------------------------------------