//
//  RoundedCorner.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//


import SwiftUI 

public struct RoundedCorner: Shape {
    
    public var radius: CGFloat = .infinity
    public var corners: UIRectCorner = .allCorners
    
    public func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    public func cornerRadius(_ radius: RadiusVars, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius.rawValue, corners: corners) )
    }
    
    public func radius(_ radius: RadiusVars) -> some View {
        clipShape(RoundedRectangle(cornerRadius: radius.rawValue))
    }
}
