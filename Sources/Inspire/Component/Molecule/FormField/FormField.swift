//
//  FormField.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/4/25.
//

import SwiftUI

public struct FormField<Content: View>: View {
    let label: String
    let isEssential: Bool
    let description: String?
    let size: FormFieldSize
    let disabled: Bool
    let content: Content
    
    public init(
        label: String,
        isEssential: Bool = false,
        description: String? = nil,
        size: FormFieldSize = .large,
        disabled: Bool = false,
        @ViewBuilder content: () -> Content
    ) {
        self.label = label
        self.isEssential = isEssential
        self.description = description
        self.size = size
        self.disabled = disabled
        self.content = content()
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: size.spacing) {
            HStack {
                Label(label, size: size.labelSize, disabled: disabled, isEssential: isEssential)
            }
            .padding(.horizontal, size.labelPadding)
            
            content
            
            if let description {
                HStack {
                    Typo(description, size: size.descriptionFontSize, color: disabled ? .content.disabled : .content.muted)
                }
                .padding(.horizontal, spacingVars.micro)
            }
        }
    }
}

#Preview {
    @Previewable @State var text: String = ""
    
    VStack {
        FormField(label: "Label", description: "Description", disabled: true) {
            TextInput(text: $text, placeholder: "Placeholder", leadingIcon: GlyphIcon.DEFAULT, disabled: true)
        }
        
        FormField(label: "Label", isEssential: true, description: "Description") {
            TextInput(text: $text, placeholder: "Placeholder", leadingIcon: GlyphIcon.DEFAULT)
        }
    }
    .frame(width: 300)
}
