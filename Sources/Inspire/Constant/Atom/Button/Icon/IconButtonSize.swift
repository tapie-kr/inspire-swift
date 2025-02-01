//
//  IconButtonSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import Foundation

public enum IconButtonSize {
    case large, medium, small
    
    public var iconSize: CGFloat {
        switch self {
        case .large: return 24
        case .medium: return 20
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
    
    public var padding: CGFloat {
        switch self {
        case .large: return spacingVars.petite
        case .medium: return spacingVars.micro
        case .small: return spacingVars.tiny
        }
    }
}
