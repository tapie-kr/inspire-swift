//
//  IndicatorBadgeTheme.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public enum IndicatorBadgeTheme {
    case monochrome, red, green, blue, yellow
    
    public var backgroundColor: Color {
        switch (self) {
        case .monochrome: return .grayscale.translucent._90
        case .red: return .solid.red
        case .green: return .solid.green
        case .blue: return .solid.blue
        case .yellow: return .solid.yellow
        }
    }
}
