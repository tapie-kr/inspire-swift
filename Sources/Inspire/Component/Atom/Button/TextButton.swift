//
//  TextButton.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI


public struct TextButton: View {
    @State var isPressed: Bool = false
    
    let text: String
    let size: TextButtonSize
    let leadingIcon: IconName?
    let trailingIcon: IconName?
    let disabled: Bool
    let action: () -> Void
    
    public init(
        _ text: String,
        size: TextButtonSize = .large,
        leadingIcon: IconName? = nil,
        trailingIcon: IconName? = nil,
        disabled: Bool = false,
        action: @escaping () -> Void = {}
    ) {
        self.text = text
        self.size = size
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
        self.disabled = disabled
        self.action = action
    }
    
    let foregroundColor: Color = .content.emphasized
    
    public var body: some View {
        Button(action: action) {
            HStack(spacing: size.spacing) {
                if let leadingIcon {
                    Icon(name: leadingIcon, size: size.iconSize, color: foregroundColor)
                }
                Typo(text, size: size.fontSize, weight: size.fontWeight, color: foregroundColor)
                if let trailingIcon {
                    Icon(name: trailingIcon, size: size.iconSize, color: foregroundColor)
                }
            }
            .padding(.horizontal, size.paddingHorizontal)
            .padding(.vertical, size.paddingVertical)
            .interaction(disabled: disabled, pressed: isPressed, inverted: false)
            .radius(size.radius)
        }
        .disabled(disabled)
        .pressedBindable(isPressed: $isPressed)
    }
}

#Preview {
    VStack(spacing: 10) {
        TextButton("Button", leadingIcon: GlyphIcon.ADD_PHOTO_ALTERNATE, action: {})
        TextButton("Button", disabled: true)
    }
}
