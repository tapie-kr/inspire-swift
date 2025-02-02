//
//  ImagePreviewInputShape.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/3/25.
//

public enum ImagePreviewInputShape {
    case `default`, circle
    
    public var radius: RadiusVars {
        switch self {
        case .default: return .default
        case .circle: return .full
        }
    }
}
