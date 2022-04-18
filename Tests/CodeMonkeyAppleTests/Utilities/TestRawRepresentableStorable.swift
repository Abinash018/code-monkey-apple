//
//  TestRawRepresentableStorable.swift
//  CodeMonkeyAppleTests
//
//  Created by Kyle Hughes on 4/17/22.
//

@testable import CodeMonkeyApple

enum TestRawRepresentableStorable: String, Storable {
    case caseOne
    case caseTwo = "CASE_TWO"
}
