// ----------------------------------------------------------------------------
//
//  LogcatLogger.Debug.swift
//
//  @author     Alexander Bragin <bragin-av@roxiemobile.com>
//  @copyright  Copyright (c) 2017, Roxie Mobile Ltd. All rights reserved.
//  @link       http://www.roxiemobile.com/
//
// ----------------------------------------------------------------------------

import Foundation
import SwiftCommonsCoreLang

// ----------------------------------------------------------------------------

extension LogcatLogger
{
// MARK: - Methods

    @available(*, deprecated, message: "\n• Write a description.")
    public func d(_ tag: String, _ message: String, file: StaticString = #file, line: UInt = #line) {
        let level = Logger.LogLevel.debug
        if Logger.isLoggable(level) {
            NSLog("%@", Logger.description(level, tag, message))
        }
    }

    @available(*, deprecated, message: "\n• Write a description.")
    public func d(_ type: Any.Type, _ message: String, file: StaticString = #file, line: UInt = #line) {
        d(Reflection(of: type).type.fullName, message, file: file, line: line)
    }
}

// ----------------------------------------------------------------------------
