//
//  Segment.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct Segment<T: Equatable>: View {
    @Environment(SegmentGroupState<T>.self) private var groupState: SegmentGroupState<T>?
    @Environment(\.layoutDirection) private var layoutDirection
    
    @State var isPressed: Bool = false
    
    let label: String
    let value: T
    let leadingIcon: IconName?
    let disabled: Bool
    
    public init(
        label: String,
        value: T,
        leadingIcon: IconName? = nil,
        standalone: Bool = false,
        disabled: Bool = false
    ) {
        self.label = label
        self.value = value
        self.leadingIcon = leadingIcon
        self.disabled = disabled
    }
    
    private var isStandAlone: Bool {
        groupState == nil
    }
    
    private var foregroundColor: Color {
        if disabled {
            return .content.disabled
        }
        
        guard let groupState else {
            return .content.default
        }
        return groupState.selectedValue.wrappedValue == value ? .content.emphasized : .content.default
    }
    
    var segmentView: some View {
        HStack(spacing: spacingVars.mini) {
            if let leadingIcon {
                Icon(name: leadingIcon, size: 20, color: foregroundColor)
            }
            Typo(label, size: .petite, weight: groupState?.selectedValue.wrappedValue == value ? .semibold : .medium, color: foregroundColor)
        }
        .padding(.horizontal, spacingVars.micro)
        .padding(.vertical, spacingVars.tiny)
        .frame(maxWidth: isStandAlone ? nil : .infinity)
        .contentShape(Rectangle())
    }
    
    public var body: some View {
        Button(action: {
            withAnimation(.smooth(duration: 0.2)) {
                groupState?.selectedValue.wrappedValue = value
            }
        }) {
            segmentView
                .interaction(disabled: disabled, pressed: isPressed, inverted: false)
                .background {
                    if groupState?.selectedValue.wrappedValue == value {
                        Color.grayscale.translucent._5
                            .matchedGeometryEffect(id: "SegmentBackground", in: groupState?.namespace ?? Namespace().wrappedValue, properties: .frame)
                    }
                }
                .radius(.sharp)
        }
        .pressedBindable(isPressed: $isPressed)
        .disabled(disabled)
    }
}

#Preview {
    VStack {
        Segment(label: "Segment", value: "segment", leadingIcon: GlyphIcon.DEFAULT)
        Segment(label: "Segment", value: "segment", leadingIcon: GlyphIcon.DEFAULT, disabled: true)
    }
}
