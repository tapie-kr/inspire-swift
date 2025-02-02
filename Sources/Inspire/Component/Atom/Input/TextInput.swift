//
//  TextInput.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

struct TextInput: View {
    @FocusState var isFocused: Bool
    
    @Binding var text: String
    let size: InputSize
    let placeholder: String
    let leadingIcon: IconName?
    let trailingIcon: IconName?
    let isSecure: Bool
    let trailingAction: (() -> Void)?
    
    init(
        text: Binding<String>,
        size: InputSize = .large,
        placeholder: String = " ",
        leadingIcon: IconName? = nil,
        trailingIcon: IconName? = nil,
        isSecure: Bool = false,
        trailingAction: (() -> Void)? = nil
    ) {
        self._text = text
        self.size = size
        self.placeholder = placeholder
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
        self.isSecure = isSecure
        self.trailingAction = trailingAction
    }
    
    private var iconColor: Color {
        isFocused ? .content.emphasized : .content.default
    }
    
    var body: some View {
        HStack(spacing: size.spacing) {
            if let leadingIcon {
                Icon(name: leadingIcon, size: size.iconSize, color: iconColor)
            }

            Group {
                if isSecure {
                    SecureField("", text: $text)
                        .placeholder(for: text) {
                            Typo(placeholder, size: size.fontSize, color: .content.muted)
                        }
                        .focused($isFocused)
                        .typo(size: size.fontSize, color: .content.emphasized)
                        .tint(.content.emphasized)
                        .frame(maxWidth: .infinity)
                        .contentShape(Rectangle())
                } else {
                    TextField("", text: $text)
                        .placeholder(for: text) {
                            Typo(placeholder, size: size.fontSize, color: .content.muted)
                        }
                        .focused($isFocused)
                        .typo(size: size.fontSize, color: .content.emphasized)
                        .tint(.content.emphasized)
                        .frame(maxWidth: .infinity)
                        .contentShape(Rectangle())
                }
            }
            
            if let trailingIcon {
                Icon(name: trailingIcon, size: size.iconSize, color: iconColor, action: trailingAction)
            }
        }
        .padding(size.padding)
        .frame(maxWidth: .infinity)
        .frame(height: size.height)
        .background(Color.surface.default)
        .borderRadius(isFocused ? .grayscale.translucent._70 : .grayscale.translucent._10, width: 1, radius: size.radius)
        .radius(size.radius)
        .animation(.smooth(duration: 0.3), value: isFocused)
    }
}

#Preview {
    @Previewable @State var text = ""
    @Previewable @State var text2 = ""
    @Previewable @State var isSecure: Bool = false
    
    VStack {
        Toggle(isOn: $isSecure) {
            Text(isSecure ? "On" : "Off")
        }
        TextInput(text: $text, placeholder: "Placeholder", leadingIcon: GlyphIcon.DEFAULT, trailingIcon: isSecure ? BrandIcon.MONGODB : BrandIcon.TAPIE, isSecure: isSecure, trailingAction: {
            isSecure.toggle()
        })
        TextInput(text: $text2, size: .medium, leadingIcon: GlyphIcon.DEFAULT, isSecure: false)
    }
    .frame(width: 300)
}
