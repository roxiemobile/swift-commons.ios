// ----------------------------------------------------------------------------
//
//  Guard.AllNilOrValid.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       https://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

import SwiftCommonsAbstractions

// ----------------------------------------------------------------------------

extension Guard {

// MARK: - Methods

    /// Checks that all an objects in collection is `nil` or valid.
    ///
    /// - Parameters:
    ///   - objects: An collection of an objects.
    ///   - message: The identifying message for the `CheckError` (`nil` okay). The default is an empty string.
    ///   - file: The file name. The default is the file where function is called.
    ///   - line: The line number. The default is the line number where function is called.
    ///
    /// - Throws:
    ///   CheckError
    ///
    public static func allNilOrValid<T: Collection>(
        _ objects: T?,
        _ message: @autoclosure () -> String = "",
        file: StaticString = #file,
        line: UInt = #line
    ) where T.Element == Validatable? {

        if let error = tryIsFailure(try Check.allNilOrValid(objects)) {
            newGuardException(message(), error, file, line).raise()
        }
    }

    /// Checks that all an objects in collection is `nil` or valid.
    ///
    /// - Parameters:
    ///   - objects: An collection of an objects.
    ///   - message: The identifying message for the `CheckError` (`nil` okay). The default is an empty string.
    ///   - file: The file name. The default is the file where function is called.
    ///   - line: The line number. The default is the line number where function is called.
    ///
    /// - Throws:
    ///   CheckError
    ///
    public static func allNilOrValid<T: Collection, V: Validatable>(
        _ objects: T?,
        _ message: @autoclosure () -> String = "",
        file: StaticString = #file,
        line: UInt = #line
    ) where T.Element == V? {

        if let error = tryIsFailure(try Check.allNilOrValid(objects)) {
            newGuardException(message(), error, file, line).raise()
        }
    }
}
