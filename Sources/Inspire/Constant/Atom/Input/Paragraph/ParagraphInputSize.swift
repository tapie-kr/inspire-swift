//
//  ParagraphInputSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/3/25.
//

import SwiftUI

public enum ParagraphInputSize {
    case large, medium
    
    public var fontSize: Typography.Size {
        switch self {
        case .large: return .base
        case .medium: return .petite
        }
    }
    
    public var paddingHorizontal: CGFloat {
        switch self {
        case .large: return spacingVars.base
        case .medium: return spacingVars.petite
        }
    }
    
    public var paddingVertical: CGFloat {
        switch self {
        case .large: return spacingVars.petite
        case .medium: return spacingVars.micro
        }
    }
    
    public var radius: RadiusVars {
        switch self {
        case .large: return .default
        case .medium: return .subtle
        }
    }
}
