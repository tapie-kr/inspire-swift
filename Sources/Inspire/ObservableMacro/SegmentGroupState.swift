//
//  SegmentGroupState.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI
import Observation

@Observable
class SegmentGroupState<T: Equatable> {
    var selectedValue: Binding<T>
    var namespace: Namespace.ID
    
    init(selectedValue: Binding<T>, namespace: Namespace.ID) {
        self.selectedValue = selectedValue
        self.namespace = namespace
    }
}
