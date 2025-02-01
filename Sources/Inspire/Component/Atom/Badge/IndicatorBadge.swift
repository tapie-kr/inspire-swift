//
//  IndicatorBadge.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

struct IndicatorBadge: View {
    let size: IndicatorBadgeSize
    let theme: IndicatorBadgeTheme
    
    init(size: IndicatorBadgeSize = .large, theme: IndicatorBadgeTheme = .monochrome) {
        self.size = size
        self.theme = theme
    }
    
    var body: some View {
        Circle()
            .fill(theme.backgroundColor)
            .frame(width: size.indicatorSize, height: size.indicatorSize)
    }
}

#Preview {
    IndicatorBadge(size: .small, theme: .blue)
}
