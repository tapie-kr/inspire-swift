//
//  ParagraphInput.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct ParagraphInput: View {
    @FocusState var isFocused: Bool
    
    @Binding var text: String
    let size: ParagraphInputSize
    let placeholder: String
    let keyboardType: UIKeyboardType
    let height: CGFloat
    let maxLength: Int?
    
    public init(
        text: Binding<String>,
        size: ParagraphInputSize = .large,
        placeholder: String = " ",
        keyboardType: UIKeyboardType = .default,
        height: CGFloat = 120,
        maxLength: Int? = nil
    ) {
        self._text = text
        self.size = size
        self.placeholder = placeholder
        self.keyboardType = keyboardType
        self.height = height
        self.maxLength = maxLength
    }
    
    private var formattedCount: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: text.count)) ?? "\(text.count)"
    }
    
    private var formattedMaxLength: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: maxLength ?? 0)) ?? "\(maxLength ?? 0)"
    }
    
    private var iconColor: Color {
        isFocused ? .content.emphasized : .content.default
    }
    
    public var body: some View {
        TextEditor(text: $text)
            .typo(size: size.fontSize, color: .content.emphasized)
            .placeholder(for: text, alignment: .topLeading) {
                Typo(placeholder, size: size.fontSize, color: .content.muted)
                    .padding(.horizontal, size.paddingHorizontal / 2)
                    .padding(.vertical, size.paddingVertical)
            }
            .keyboardType(keyboardType)
            .textInputAutocapitalization(.never)
            .autocorrectionDisabled()
            .focused($isFocused)
            .tint(.content.emphasized)
            .frame(maxWidth: .infinity)
            .frame(height: height)
            .padding(.horizontal, size.paddingHorizontal)
            .padding(.vertical, size.paddingVertical)
            .scrollContentBackground(.hidden)
            .background(Color.surface.default)
            .borderRadius(isFocused ? .grayscale.translucent._70 : .line.border, width: 1, radius: size.radius)
            .radius(size.radius)
            .overlay {
                if let maxLength {
                    VStack {
                        Typo("\(formattedCount)/\(formattedMaxLength)", size: .mini, color: .content.muted)
                            .padding(.trailing, size.paddingHorizontal)
                            .padding(.bottom, size.paddingVertical)
                            .animation(.smooth(duration: 0.1), value: text.count)
                            .transition(.opacity)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                }
            }
            .animation(.smooth(duration: 0.3), value: isFocused)
            .onChange(of: text) { newValue in
                if let maxLength, newValue.count > maxLength {
                    text = String(newValue.prefix(maxLength))
                }
            }

    }
}

#Preview {
    @Previewable @State var text = ""
    @Previewable @State var text2 = ""
    @Previewable @State var isSecure: Bool = false
    
    VStack {
        ParagraphInput(text: $text, placeholder: "Placeholder", maxLength: 300)
        ParagraphInput(text: $text2, size: .medium, placeholder: "Placeholder")
    }
    .frame(width: 300)
}
