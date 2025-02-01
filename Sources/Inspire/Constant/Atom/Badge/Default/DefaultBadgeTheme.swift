//
//  DefaultBadgeTheme.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public enum DefaultBadgeTheme {
    case monochrome, red, green, blue, yellow
    
    public var backgroundColor: Color {
        switch (self) {
        case .monochrome: return .grayscale.translucent._5
        case .red: return .solid.translucent.red._10
        case .green: return .solid.translucent.green._10
        case .blue: return .solid.translucent.blue._10
        case .yellow: return .solid.translucent.yellow._10
        }
    }
    
    public var foregroundColor: Color {
        switch (self) {
        case .monochrome: return .content.emphasized
        case .red: return .solid.red
        case .green: return .solid.green
        case .blue: return .solid.blue
        case .yellow: return .solid.yellow
        }
    }
}
