//
//  StringsHelper.swift
//  Portable
//

class StringsHelper {
    
    enum StringKey: String {
        // A key description
        case aKey                               = "Value"
    }
    
    static func string(for key: StringKey) -> String {
        switch key {
        default:
            return key.rawValue
        }
    }
}
