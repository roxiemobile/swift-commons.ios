// ----------------------------------------------------------------------------
//
//  Guard.IsTrue.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       https://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

extension Guard {

// MARK: - Methods

    /// Checks that a condition is `true`.
    ///
    /// - Parameters:
    ///   - condition: Condition to be checked.
    ///   - message: The identifying message for the `GuardException` (`nil` okay). The default is an empty string.
    ///   - file: The file name. The default is the file where function is called.
    ///   - line: The line number. The default is the line number where function is called.
    ///
    /// - Throws:
    ///   GuardException
    ///
    public static func isTrue(
        _ condition: Bool,
        _ message: @autoclosure () -> String = "",
        file: StaticString = #file,
        line: UInt = #line
    ) {

        if let error = tryIsFailure(try Check.isTrue(condition)) {
            newGuardException(message(), error, file, line).raise()
        }
    }
}
