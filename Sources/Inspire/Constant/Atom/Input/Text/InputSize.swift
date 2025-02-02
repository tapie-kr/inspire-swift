//
//  InputSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public enum InputSize {
    case large, medium
    
    public var fontSize: Typography.Size {
        switch self {
        case .large: return .base
        case .medium: return .petite
        }
    }
    
    public var height: CGFloat {
        switch self {
        case .large: return 48
        case .medium: return 36
        }
    }
    
    public var iconSize: CGFloat {
        switch self {
        case .large: return 24
        case .medium: return 18
        }
    }
    
    public var padding: CGFloat {
        switch self {
        case .large: return spacingVars.petite
        case .medium: return spacingVars.micro
        }
    }
    
    public var spacing: CGFloat {
        switch self {
        case .large: return spacingVars.mini
        case .medium: return spacingVars.tiny
        }
    }
    
    public var radius: RadiusVars {
        switch self {
        case .large: return .default
        case .medium: return .subtle
        }
    }
}
