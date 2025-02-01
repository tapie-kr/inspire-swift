//
//  LabelSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import Foundation

public enum LabelSize {
    case large, medium, small
    
    public var fontSize: Typography.Size {
        switch self {
        case .large: return .petite
        case .medium: return .tiny
        case .small: return .mini
        }
    }
    
    public var iconSize: CGFloat {
        switch self {
        case .large: return 10
        case .medium: return 8
        case .small: return 6
        }
    }
}
