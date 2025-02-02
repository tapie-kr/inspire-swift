//
//  Typo.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//

import SwiftUI

public struct Typo: View {
    let text: String
    let size: Typography.Size
    let weight: Typography.Weight
    let color: Color
           
    public init(_ text: String, size: Typography.Size, weight: Typography.Weight = .regular, color: Color = .content.emphasized) {
        self.text = text
        self.size = size
        self.weight = weight
        self.color = color
    }

    public var body: some View {
        Text(text)
            .typo(size: size, weight: weight, color: color)
    }
}

#Preview {
    Typo("INSPIRE: Creative Kit", size: .giant, weight: .medium, color: .content.inverted.default)
}
