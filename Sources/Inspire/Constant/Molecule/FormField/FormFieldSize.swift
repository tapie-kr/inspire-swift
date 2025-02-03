//
//  FormFieldSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/4/25.
//

import SwiftUI

public enum FormFieldSize {
    case large, small
    
    public var spacing: CGFloat {
        switch self {
        case .large: return spacingVars.micro
        case .small: return spacingVars.mini
        }
    }
    
    public var labelSize: LabelSize {
        switch self {
        case .large: return .large
        case .small: return .medium
        }
    }
    
    public var labelPadding: CGFloat {
        switch self {
        case .large: return spacingVars.tiny
        case .small: return spacingVars.optical
        }
    }
    
    public var descriptionFontSize: Typography.Size {
        switch self {
        case .large: return .petite
        case .small: return .tiny
        }
    }
}
