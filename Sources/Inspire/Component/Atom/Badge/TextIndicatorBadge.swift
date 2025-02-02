//
//  TextIndicatorBadge.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct TextIndicatorBadge: View {
    let text: String
    let variant: TextIndicatorBadgeVariant
    
    public init(_ text: String, variant: TextIndicatorBadgeVariant = .default) {
        self.text = text
        self.variant = variant
    }
    
    public var body: some View {
        Typo(text, size: .mini, weight: .medium, color: variant.foregroundColor)
            .padding(.vertical, spacingVars.none)
            .padding(.horizontal, spacingVars.mini)
            .background(variant.backgroundColor)
            .radius(.full)
    }
}

#Preview {
    HStack(spacing: 10) {
        TextIndicatorBadge("99+")
        TextIndicatorBadge("99+", variant: .emphasized)
    }
}
