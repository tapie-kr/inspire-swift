//
//  TextGroup.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/4/25.
//

import SwiftUI

public struct TextGroup: View {
    let title: String
    let description: String
    
    public init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: spacingVars.tiny) {
            Typo(title, size: .medium, weight: .semibold)
            Typo(description, size: .petite, weight: .medium)
        }
    }
}

#Preview {
    TextGroup(title: "Title", description: "Description")
}
