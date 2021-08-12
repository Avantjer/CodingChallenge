//
//  CodingExercise3.swift
//  CodingChallenge
//
//  Created by Jerry Barnes on 8/12/21.
//

import Foundation

// MARK: - Coding Exercise 3

/// Determines whether two strings share a common substring. A substring may be as small as one character.
/// - Parameters:
///   - firstString: a string of any length, including empty
///   - secondString: a string of any length, including empty
/// - Returns: true, if firstString and secondString share any characters in common, false otherwise
func stringsShareCommonSubstring(firstString: String, secondString: String) -> Bool {
    guard !firstString.isEmpty, !secondString.isEmpty else { return false }
    
    let firstString = Set(firstString.lowercased())
    let secondString = Set(secondString.lowercased())
    let commonSubstring = firstString.intersection(secondString)
    
    return commonSubstring.isEmpty ? false : true
}
