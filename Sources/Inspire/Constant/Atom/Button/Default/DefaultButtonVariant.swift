//
//  DefaultButtonVariant.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

public enum DefaultButtonVariant {
    case primary, secondary
    
    public var inverted: Bool {
        self == .primary
    }
}
