//
//  Label.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct Label: View {
    let text: String
    let size: LabelSize
    let disabled: Bool
    let isEssential: Bool
    
    public init(_ text: String, size: LabelSize = .large, disabled: Bool = false, isEssential: Bool = false) {
        self.text = text
        self.size = size
        self.disabled = disabled
        self.isEssential = isEssential
    }
    
    public var body: some View {
        HStack(spacing: spacingVars.optical) {
            Typo(text, size: size.fontSize, weight: .regular, color: disabled ? .content.disabled : .content.emphasized)
            if isEssential {
                Icon(name: GlyphIcon.ASTERISK, size: size.iconSize, color: disabled ? .solid.translucent.red._30 : .solid.red)
            }
        }
    }
}

#Preview {
    VStack(spacing: 10) {
        Label("Label", size: .large, disabled: false, isEssential: true)
        Label("Label", size: .large, disabled: true, isEssential: true)
        Label("Label", size: .medium, disabled: false, isEssential: true)
        Label("Label", size: .medium, disabled: true, isEssential: true)
        Label("Label", size: .small, disabled: false, isEssential: true)
        Label("Label", size: .small, disabled: true, isEssential: true)
    }
}
