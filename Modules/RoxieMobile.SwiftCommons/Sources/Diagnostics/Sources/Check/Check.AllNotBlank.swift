// ----------------------------------------------------------------------------
//
//  Check.AllNotBlank.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       https://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

extension Check {

// MARK: - Methods

    /// Checks that all a string values in collection is not empty and contains not only whitespace characters.
    ///
    /// - Parameters:
    ///   - values: An collection of string values.
    ///   - message: The identifying message for the `CheckError` (`nil` okay). The default is an empty string.
    ///   - file: The file name. The default is the file where function is called.
    ///   - line: The line number. The default is the line number where function is called.
    ///
    /// - Throws:
    ///   CheckError
    ///
    public static func allNotBlank<T: Collection>(
        _ values: T?,
        _ message: @autoclosure () -> String = "",
        file: StaticString = #file,
        line: UInt = #line
    ) throws where T.Element == String {

        if let collection = values, collection.isNotEmpty {
            guard collection.all({ $0.isNotBlank }) else {
                throw newCheckError(message(), file, line)
            }
        }
    }

    /// Checks that all a string values in collection is not `nil`, not empty and contains
    /// not only whitespace characters.
    ///
    /// - Parameters:
    ///   - values: An collection of string values.
    ///   - message: The identifying message for the `CheckError` (`nil` okay). The default is an empty string.
    ///   - file: The file name. The default is the file where function is called.
    ///   - line: The line number. The default is the line number where function is called.
    ///
    /// - Throws:
    ///   CheckError
    ///
    public static func allNotBlank<T: Collection>(
        _ values: T?,
        _ message: @autoclosure () -> String = "",
        file: StaticString = #file,
        line: UInt = #line
    ) throws where T.Element == String? {

        if let collection = values, collection.isNotEmpty {
            guard collection.all({ $0.isNotBlank }) else {
                throw newCheckError(message(), file, line)
            }
        }
    }
}
