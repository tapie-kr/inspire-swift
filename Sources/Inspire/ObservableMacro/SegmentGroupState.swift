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
   
   init(selectedValue: Binding<T>) {
       self.selectedValue = selectedValue
   }
}
