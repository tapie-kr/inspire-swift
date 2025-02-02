//
//  DefaultBadge.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct DefaultBadge: View {
    let text: String
    let size: DefaultBadgeSize
    let theme: DefaultBadgeTheme
    let leadingIcon: IconName?
    
    public init(_ text: String, size: DefaultBadgeSize = .large, theme: DefaultBadgeTheme = .monochrome, leadingIcon: IconName? = nil) {
        self.text = text
        self.size = size
        self.theme = theme
        self.leadingIcon = leadingIcon
    }
    
    public var body: some View {
        HStack(spacing: size.spacing) {
            if let leadingIcon {
                Icon(name: leadingIcon, size: size.iconSize, color: theme.foregroundColor)
            }
            Typo(text, size: size.fontSize, weight: size.fontWeight, color: theme.foregroundColor)
        }
        .padding(.horizontal, size.paddingHorizontal)
        .padding(.vertical, size.paddingVertical)
        .background(theme.backgroundColor)
        .radius(size.radius)
    }
}

#Preview {
    DefaultBadge("Swift", theme: .red, leadingIcon: BrandIcon.SWIFT)
}
