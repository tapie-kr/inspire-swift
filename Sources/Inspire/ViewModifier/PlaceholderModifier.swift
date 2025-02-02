//
//  PlaceholderModifier.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        for shouldShow: String,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow.isEmpty ? 1 : 0)
            self
        }
    }
}
