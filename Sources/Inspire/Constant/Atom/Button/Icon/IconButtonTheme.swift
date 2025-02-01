//
//  IconButtonTheme.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public enum IconButtonTheme {
    case monochrome, red, green, blue, yellow
    
    public func backgroundColor(for variant: IconButtonVariant) -> Color {
        switch (self, variant) {
        case (.monochrome, .primary):
            return .surface.inverted.elevated
        case (.monochrome, .secondary):
            return .surface.elevated
            
        case (.red, .primary):
            return .solid.translucent.red._60
        case (.red, .secondary):
            return .solid.translucent.red._20
            
        case (.green, .primary):
            return .solid.translucent.green._60
        case (.green, .secondary):
            return .solid.translucent.green._20
            
        case (.blue, .primary):
            return .solid.translucent.blue._60
        case (.blue, .secondary):
            return .solid.translucent.blue._20
            
        case (.yellow, .primary):
            return .solid.translucent.yellow._60
        case (.yellow, .secondary):
            return .solid.translucent.yellow._20
        }
    }
    
    public func foregroundColor(for variant: IconButtonVariant) -> Color {
        switch (self, variant) {
        case (.monochrome, .primary):
            return .content.inverted.emphasized
        case (.monochrome, .secondary):
            return .content.emphasized
            
        case (.red, .primary):
            return .solid.white
        case (.red, .secondary):
            return .solid.red
            
        case (.green, .primary):
            return .solid.white
        case (.green, .secondary):
            return .solid.green
            
        case (.blue, .primary):
            return .solid.white
        case (.blue, .secondary):
            return .solid.blue
            
        case (.yellow, .primary):
            return .solid.black
        case (.yellow, .secondary):
            return .solid.yellow
        }
    }
}
