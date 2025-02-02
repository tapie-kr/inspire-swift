//
//  TextInput.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

struct TextInput: View {
    @Binding var text: String
    let size: InputSize
    let placeholder: String?
    let leadingIcon: IconName?
    let trailingIcon: IconName?
    let isSecure: Bool
    
    init(
        text: Binding<String>,
        size: InputSize = .large,
        placeholder: String? = nil,
        leadingIcon: IconName? = nil,
        trailingIcon: IconName? = nil,
        isSecure: Bool = false
    ) {
        self._text = text
        self.size = size
        self.placeholder = placeholder
        self.leadingIcon = leadingIcon
        self.trailingIcon = trailingIcon
        self.isSecure = isSecure
    }
    
    var body: some View {
        HStack(spacing: size.spacing) {
            
        }
    }
}

#Preview {
    @Previewable @State var text = ""
    TextInput(text: $text, isSecure: false)
}
