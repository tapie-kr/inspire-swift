//
//  TextIndicatorBadgeVariant.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public enum TextIndicatorBadgeVariant {
    case `default`, emphasized
    
    public var backgroundColor: Color {
        switch self {
        case .default: return .surface.inverted.default
        case .emphasized: return .solid.red
        }
    }
    
    public var foregroundColor: Color {
        switch self {
        case .default: return .content.inverted.emphasized
        case .emphasized: return .solid.white
        }
    }
}
