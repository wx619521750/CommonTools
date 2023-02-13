//
//  Default.swift
//  testproject
//
//  Created by 王星鑫 on 2022/9/24.
//

import Foundation


protocol DefaultValue {
    associatedtype Value: Codable
    static var defaultValue: Value { get }
}
@propertyWrapper
struct Default<T: DefaultValue> {
    var wrappedValue: T.Value
}

extension Default: Codable {
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        wrappedValue = (try? container.decode(T.Value.self)) ?? T.defaultValue
    }
    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try? container.encode(wrappedValue)
    }
}

extension KeyedDecodingContainer {
    func decode<T>(
        _ type: Default<T>.Type,
        forKey key: Key
    ) throws -> Default<T> where T: DefaultValue {
        try decodeIfPresent(type, forKey: key) ?? Default(wrappedValue: T.defaultValue)
    }
}

extension Bool {
    enum False: DefaultValue {
        static let defaultValue = false
    }
    enum True: DefaultValue {
        static let defaultValue = true
    }
}

extension Int {
    enum Zero: DefaultValue {
        static let defaultValue = 0
    }
}

extension Float {
    enum Zero: DefaultValue {
        static let defaultValue = 0
    }

}

extension String {
    enum Empty: DefaultValue {
        static let defaultValue = ""
    }
}
