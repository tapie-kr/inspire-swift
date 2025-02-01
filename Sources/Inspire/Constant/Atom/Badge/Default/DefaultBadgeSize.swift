//
//  DefaultBadgeSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import Foundation

public enum DefaultBadgeSize {
    case large, small
    
    public var spacing: CGFloat {
        switch self {
        case .large: return spacingVars.mini
        case .small: return spacingVars.optical
        }
    }
    
    public var fontSize: Typography.Size {
        switch self {
        case .large: return .tiny
        case .small: return .mini
        }
    }
    
    public var fontWeight: Typography.Weight {
        switch self {
        case .large: return .medium
        case .small: return .regular
        }
    }
    
    public var iconSize: CGFloat {
        switch self {
        case .large: return 18
        case .small: return 14
        }
    }
    
    public var radius: RadiusVars {
        switch self {
        case .large: return RadiusVars.subtle
        case .small: return RadiusVars.sharp
        }
    }
    
    public var paddingHorizontal: CGFloat {
        switch self {
        case .large: return spacingVars.micro
        case .small: return spacingVars.mini
        }
    }
    
    public var paddingVertical: CGFloat {
        switch self {
        case .large: return spacingVars.mini
        case .small: return spacingVars.optical
        }
    }
}
