//
//  TextButtonSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import Foundation

public enum TextButtonSize {
    case large, medium, small
    
    public var spacing: CGFloat {
        switch self {
        case .large: return spacingVars.tiny
        case .medium, .small: return spacingVars.mini
        }
    }
    
    public var fontSize: Typography.Size {
        switch self {
        case .large: return .base
        case .medium: return .petite
        case .small: return .tiny
        }
    }
    
    public var fontWeight: Typography.Weight {
        switch self {
        case .large: return .semibold
        case .medium, .small: return .medium
        }
    }
    
    public var iconSize: CGFloat {
        switch self {
        case .large: return 24
        case .medium: return 18
        case .small: return 16
        }
    }
    
    public var radius: RadiusVars {
        switch self {
        case .large: return RadiusVars.default
        case .medium: return RadiusVars.subtle
        case .small: return RadiusVars.sharp
        }
    }
    
    public var paddingHorizontal: CGFloat {
        switch self {
        case .large: return spacingVars.micro
        case .medium: return spacingVars.tiny
        case .small: return spacingVars.mini
        }
    }
    
    public var paddingVertical: CGFloat {
        switch self {
        case .large: return spacingVars.tiny
        case .medium: return spacingVars.mini
        case .small: return spacingVars.optical
        }
    }
}
