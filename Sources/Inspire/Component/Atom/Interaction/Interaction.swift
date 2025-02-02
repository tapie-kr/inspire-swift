//
//  Interaction.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/2/25.
//

import SwiftUI

struct Interaction: View {
    let status: InteractionStatus
    let inverted: Bool
    
    init(status: InteractionStatus, inverted: Bool = false) {
        self.status = status
        self.inverted = inverted
    }
    
    var body: some View {
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
