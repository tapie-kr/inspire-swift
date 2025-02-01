//
//  Segment.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct Segment<T: Equatable>: View {
    @Environment(SegmentGroupState<T>.self) private var groupState
    
    let label: String
    let value: T
    let leadingIcon: IconName?
    let fullWidth: Bool
    
    public init(
        label: String,
        value: T,
        leadingIcon: IconName? = nil,
        fullWidth: Bool = true
    ) {
        self.label = label
        self.value = value
        self.leadingIcon = leadingIcon
        self.fullWidth = fullWidth
    }
    
    private var foregroundColor: Color {
        groupState.selectedValue.wrappedValue == value ? .content.emphasized : .content.default
    }
    
    var segmentView: some View {
        HStack(spacing: spacingVars.mini) {
            if let leadingIcon {
                Icon(name: leadingIcon, size: 20, color: foregroundColor)
            }
            Typo(label, size: .petite, weight: groupState.selectedValue.wrappedValue == value ? .semibold : .medium, color: foregroundColor)
        }
        .padding(.horizontal, spacingVars.micro)
        .padding(.vertical, spacingVars.tiny)
    }
    
    public var body: some View {
        Button(action: {
            groupState.selectedValue.wrappedValue = value
        }) {
            segmentView
                .frame(maxWidth: fullWidth ? .infinity : nil)
                .background(groupState.selectedValue.wrappedValue == value ? Color.grayscale.translucent._5 : .clear)
                .radius(.sharp)
        }
    }
}
