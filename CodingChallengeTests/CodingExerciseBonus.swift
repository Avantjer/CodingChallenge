//
//  CodingExerciseBonus.swift
//  CodingChallengeTests
//
//  Created by Jerry Barnes on 8/12/21.
//

import Foundation

// MARK: - Bonus Coding Exercise

/// Calculates the length of the longest substring that is common to firstString and secondString
/// - Parameters:
///   - firstString: a string of any length, including empty
///   - secondString: a string of any length, including empty
/// - Returns: length of the longest  substring that is common to firstString and secondString
func lengthOfLongestSubstring(firstString: String, secondString: String) -> Int {
    var firstString = firstString.lowercased()
    var secondString = secondString.lowercased()
    
    guard !firstString.isEmpty,
          !secondString.isEmpty,
          stringsShareCommonSubstring(firstString: firstString, secondString: secondString) else {
        return 0
    }
    
    if firstString == secondString { return firstString.count }
    
    if secondString.count < firstString.count {
        (firstString, secondString) = (secondString, firstString)
    }
    
    var startIndexOffset = 0
    var substringLength = 2
    var substringFound = Substring("")
    var substringWasFound = false
    
    while startIndexOffset < firstString.count - (substringLength - 1) {
        let startIndex = firstString.index(firstString.startIndex, offsetBy: startIndexOffset)
        let endIndex = firstString.index(startIndex, offsetBy: substringLength)
        let substring = firstString[startIndex..<endIndex]
        
        if secondString.contains(substring) {
            substringWasFound = true
            substringFound = substring
            substringLength += 1
            continue
        }
        
        if substringWasFound {
            startIndexOffset += substringLength
            substringWasFound = false
        }
        startIndexOffset += 1
    }
    return substringFound.count > 0 ? substringFound.count : 1
}
