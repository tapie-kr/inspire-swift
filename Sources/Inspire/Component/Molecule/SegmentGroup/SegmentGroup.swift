//
//  SegmentGroup.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct SegmentGroup<T: Equatable, Content: View>: View {
    @Binding var currentValue: T
    let content: Content
    
    public init(currentValue: Binding<T>, @ViewBuilder content: () -> Content) {
        self._currentValue = currentValue
        self.content = content()
    }
    
    public var body: some View {
        HStack(spacing: spacingVars.mini) {
            content
        }
        .frame(maxWidth: .infinity)
        .padding(spacingVars.mini)
        .background(Color.surface.elevated)
        .radius(.default)
        .environment(SegmentGroupState(selectedValue: $currentValue))
    }
}

#Preview {
    @Previewable @State var selectedValue: String = "test"
    @Previewable @State var selectedValue2: Int = 1
    

    VStack {
        Text("\(selectedValue)")
        SegmentGroup(currentValue: $selectedValue) {
            Segment(label: "Segment 1", value: "test", leadingIcon: GlyphIcon.DEFAULT)
            Segment(label: "Segment 2", value: "test2", leadingIcon: BrandIcon.NPM)
        }
        
        Text("\(selectedValue2)")
        
        SegmentGroup(currentValue: $selectedValue2) {
            Segment(label: "Segment 1", value: 1, leadingIcon: GlyphIcon.DEFAULT)
            Segment(label: "Segment 2", value: 2, leadingIcon: BrandIcon.NPM)
        }
        
        Segment(label: "Segment Test", value: 3, leadingIcon: BrandIcon.TAPIE)
    }
    .frame(width: 300)
}
