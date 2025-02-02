//
//  PressBindableButtonStyle.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI


private struct PressBindableButtonStyle: ButtonStyle {
    @Binding var isPressed: Bool

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .onChange(of: configuration.isPressed, perform: { newValue in
                withAnimation(.easeInOut(duration: 0.15)) {
                    isPressed = newValue
                }
            })
    }
}

private struct PressedBindableModifier: ViewModifier {
    @Binding var isPressed: Bool
    
    func body(content: Content) -> some View {
        content.buttonStyle(PressBindableButtonStyle(isPressed: $isPressed))
    }
}

public extension View {
    func pressedBindable(isPressed: Binding<Bool>) -> some View {
        modifier(PressedBindableModifier(isPressed: isPressed))
    }
}
