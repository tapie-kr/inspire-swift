//
//  Interaction.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

public struct Interaction: View {
    let status: InteractionStatus
    let inverted: Bool
    
    public init(status: InteractionStatus, inverted: Bool = false) {
        self.status = status
        self.inverted = inverted
    }
    
    public var body: some View {
        Rectangle()
            .fill(status.fillColor(inverted: inverted))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        Interaction(status: .pressed, inverted: true)
    }
}
