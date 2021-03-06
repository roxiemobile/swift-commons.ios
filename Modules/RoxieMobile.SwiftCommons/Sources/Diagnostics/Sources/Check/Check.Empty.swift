// ----------------------------------------------------------------------------
//
//  Check.Empty.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       https://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

extension Check {

// MARK: - Methods: String

    /// Checks that a string is `nil` or empty.
    ///
    /// - Parameters:
    ///   - value: The string to check or `nil`.
    ///   - message: The identifying message for the `CheckError` (`nil` okay). The default is an empty string.
    ///   - file: The file name. The default is the file where function is called.
    ///   - line: The line number. The default is the line number where function is called.
    ///
    /// - Throws:
    ///   CheckError
    ///
    public static func empty(
        _ value: String?,
        _ message: @autoclosure () -> String = "",
        file: StaticString = #file,
        line: UInt = #line
    ) throws {

        guard value.isEmpty else {
            throw newCheckError(message(), file, line)
        }
    }

// MARK: - Methods: Collection

    /// Checks that a collection is `nil` or empty.
    ///
    /// - Parameters:
    ///   - collection: The collection to check or `nil`.
    ///   - message: The identifying message for the `CheckError` (`nil` okay). The default is an empty string.
    ///   - file: The file name. The default is the file where function is called.
    ///   - line: The line number. The default is the line number where function is called.
    ///
    /// - Throws:
    ///   CheckError
    ///
    public static func empty<T: Collection>(
        _ collection: T?,
        _ message: @autoclosure () -> String = "",
        file: StaticString = #file,
        line: UInt = #line
    ) throws {

        guard collection.isEmpty else {
            throw newCheckError(message(), file, line)
        }
    }
}
