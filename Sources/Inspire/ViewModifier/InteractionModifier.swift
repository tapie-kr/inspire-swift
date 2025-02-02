//
//  InteractionModifier.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

private struct InteractionModifier: ViewModifier {
    let disabled: Bool
    let pressed: Bool
    let inverted: Bool
    
    private var status: InteractionStatus {
        disabled ? .disabled : pressed ? .pressed : .none
    }
    
    func body(content: Content) -> some View {
        content
            .background(
                Interaction(
                    status: status,
                    inverted: inverted
                )
            )
    }
}

public extension View {
    func interaction(disabled: Bool = false, pressed: Bool = false, inverted: Bool = false) -> some View {
        modifier(InteractionModifier(disabled: disabled, pressed: pressed, inverted: inverted))
    }
}
