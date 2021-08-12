//
//  CodingChallengeTests.swift
//  CodingChallengeTests
//
//  Created by Jerry Barnes on 8/10/21.
//

import XCTest

class CodingChallengeTests: XCTestCase {

    func testStringsShareCommonSubstring() throws {
        var firstString = "art"
        var secondString = "ammo"
        var result = stringsShareCommonSubstring(firstString: firstString, secondString: secondString)
        XCTAssertTrue(result, "\"\(firstString)\", and \"\(secondString)\" do not share a common substring")
        
        firstString = "be"
        secondString = "cat"
        result = stringsShareCommonSubstring(firstString: firstString, secondString: secondString)
        XCTAssertFalse(result, "\"\(firstString)\", and \"\(secondString)\" share a common substring")
        
        firstString = ""
        secondString = "cat"
        result = stringsShareCommonSubstring(firstString: firstString, secondString: secondString)
        XCTAssertFalse(result, "\"\(firstString)\", and \"\(secondString)\" share a common substring")
        
        firstString = "be"
        secondString = ""
        result = stringsShareCommonSubstring(firstString: firstString, secondString: secondString)
        XCTAssertFalse(result, "\"\(firstString)\", and \"\(secondString)\" share a common substring")
        
        firstString = ""
        secondString = ""
        result = stringsShareCommonSubstring(firstString: firstString, secondString: secondString)
        XCTAssertFalse(result, "\"\(firstString)\", and \"\(secondString)\" share a common substring")
        
        firstString = "wonderful"
        secondString = "abcghijk"
        result = stringsShareCommonSubstring(firstString: firstString, secondString: secondString)
        XCTAssertFalse(result, "\"\(firstString)\", and \"\(secondString)\" share a common substring")
    }
    
    func testLengthOfLongestSubstring() throws {
        var length = lengthOfLongestSubstring(firstString: "wonderful", secondString: "fulsome")
        XCTAssertEqual(length, 3) // Common substring: "ful"
        
        length = lengthOfLongestSubstring(firstString: "very wonderful", secondString: "very fulsome")
        XCTAssertEqual(length, 5) // Common substring: "very "
        
        length = lengthOfLongestSubstring(firstString: "wonderful very", secondString: "fulsome very")
        XCTAssertEqual(length, 5) // Common substring: " very"
        
        length = lengthOfLongestSubstring(firstString: "wonderful", secondString: "airplane")
        XCTAssertEqual(length, 1) // Common substring: "r"
        
        length = lengthOfLongestSubstring(firstString: "wonderful", secondString: "awful")
        XCTAssertEqual(length, 3) // Common substring: "ful"
        
        length = lengthOfLongestSubstring(firstString: "", secondString: "airplane")
        XCTAssertEqual(length, 0) // Common substring: ""
        
        length = lengthOfLongestSubstring(firstString: "airplane", secondString: "")
        XCTAssertEqual(length, 0) // Common substring: ""
        
        length = lengthOfLongestSubstring(firstString: "", secondString: "")
        XCTAssertEqual(length, 0) // Common substring: ""
        
        length = lengthOfLongestSubstring(firstString: "Three things cannot be long hidden: the 🌞, the 🌙, and the truth.",
                                          secondString: "The 🌞, the 🌙, and the truth cannot be long hidden")
        XCTAssertEqual(length, 27) // Common substring: "the 🌞, the 🌙, and the truth"
    }
    
}
