//
//  InteractionStatus.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public enum InteractionStatus {
    case none, pressed, disabled
    
    public func fillColor(inverted: Bool) -> Color {
        if inverted {
            switch self {
            case .none: return .clear
            case .pressed: return .interaction.inverted.pressed
            case .disabled: return .interaction.inverted.disabled
            }
        } else {
            switch self {
            case .none: return .clear
            case .pressed: return .interaction.pressed
            case .disabled: return .interaction.disabled
            }
        }
    }
}
