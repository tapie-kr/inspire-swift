//
//  Chip.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/3/25.
//

import SwiftUI

public struct Chip: View {
    @State var isPressed: Bool = false
    
    let text: String
    let leadingIcon: IconName?
    let trailingIcon: IconName?
    let active: Bool
    let disabled: Bool
    let action: (() -> Void)?
    
    public init(
        text: String,
        leadingIcon: IconName? = nil,
        trailingIcon: IconName? = nil,
        active: Bool,
        disabled: Bool = false,
        action: (() -> Void)? = nil
    ) {
        self.text = text
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
        self.active = active
        self.disabled = disabled
        self.action = action
    }
    
    private var foregroundColor: Color {
        disabled ? .content.disabled : active ? .content.inverted.emphasized : .content.default
    }
    
    private var backgroundColor: Color {
        active ? .surface.inverted.elevated : .grayscale.translucent._5
    }
    
    public var body: some View {
        Button(action: {}) {
            HStack(spacing: spacingVars.tiny) {
                if let leadingIcon {
                    Icon(name: leadingIcon, size: 16, color: foregroundColor)
                }
                
                Typo(text, size: .tiny, weight: .medium, color: foregroundColor)
                
                if let trailingIcon {
                    Icon(name: trailingIcon, size: 16, color: foregroundColor)
                }
            }
            .padding(.vertical, spacingVars.tiny)
            .padding(.horizontal, spacingVars.petite)
            .interaction(disabled: disabled, pressed: isPressed, inverted: true)
            .background(backgroundColor)
            .radius(.subtle)
        }
        .pressedBindable(isPressed: $isPressed)
        .disabled(disabled)
    }
}

#Preview {
    HStack {
        VStack {
            Chip(text: "Chip", leadingIcon: GlyphIcon.ADD, active: true)
            Chip(text: "Chip", active: false)
        }
        
        VStack {
            Chip(text: "Chip", active: true, disabled: true)
            Chip(text: "Chip", active: false, disabled: true)
        }
    }
}
