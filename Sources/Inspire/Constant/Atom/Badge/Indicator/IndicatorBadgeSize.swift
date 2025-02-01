//
//  IndicatorBadgeSize.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import Foundation

public enum IndicatorBadgeSize {
    case large, small
    
    public var indicatorSize: CGFloat {
        switch self {
        case .large: return 7
        case .small: return 5
        }
    }
}
