//
//  StorableCodableWrapper.swift
//  CodeMonkeyApple
//
//  Created by Kyle Hughes on 4/16/22.
//

/// Prevents the need to manually implement Codable for all of the types that we want to store in `@AppStorage` as
/// `RawRepresentable` `String`s.
@dynamicMemberLookup
public struct StorableCodableWrapper<Value>: CodableRawRepresentable where Value: Codable {
    public let storedValue: Value
    
    // MARK: Public Initialization
    
    public init(_ storedValue: Value) {
        self.storedValue = storedValue
    }
    
    // MARK: Public Subscripts
    
    public subscript<PropertyValue>(dynamicMember keyPath: KeyPath<Value, PropertyValue>) -> PropertyValue {
        storedValue[keyPath: keyPath]
    }
}