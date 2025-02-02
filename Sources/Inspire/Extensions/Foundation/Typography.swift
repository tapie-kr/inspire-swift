//
//  Typography.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//


import SwiftUI

public struct Typography {
    public enum Weight {
        case extrabold, bold, semibold, medium, regular, light
       
       var value: Int {
           switch self {
           case .extrabold: return 800
           case .bold: return 700
           case .semibold: return 600
           case .medium: return 500
           case .regular: return 400
           case .light: return 300
           }
       }
   }
   
    public enum Size {
       case giant, jumbo, large, medium, moderate, base, petite, micro, tiny, mini
       
        public var value: CGFloat {
           switch self {
           case .giant: return 48
           case .jumbo: return 32
           case .large: return 28
           case .medium: return 20
           case .moderate: return 18
           case .base: return 16
           case .petite: return 14
           case .micro: return 13
           case .tiny: return 12
           case .mini: return 10
           }
       }
       
        public var lineHeight: CGFloat {
           switch self {
           case .giant: return 60
           case .jumbo: return 40
           case .large: return 36
           case .medium: return 28
           case .moderate: return 24
           case .base: return 24
           case .petite: return 20
           case .micro: return 18
           case .tiny: return 18
           case .mini: return 16
           }
       }
   }
   
   let size: Size
   let weight: Weight
   
   var fontSize: CGFloat {
       size.value
   }
   
   var lineHeight: CGFloat {
       size.lineHeight
   }
   
   var letterSpacing: CGFloat {
       fontSize * 0
   }
   
   var fontName: String {
       switch weight {
       case .extrabold:
           return "INSPIREFontKit-Extrabold"
       case .bold:
           return "INSPIREFontKit-Bold"
       case .semibold:
           return "INSPIREFontKit-Semibold"
       case .medium:
           return "INSPIREFontKit-Medium"
       case .regular:
           return "INSPIREFontKit-Regular"
       case .light:
           return "INSPIREFontKit-Light"
       }
   }
}

struct TypographyModifier: ViewModifier {
    let size: Typography.Size
    let weight: Typography.Weight
    let color: Color
   
    init(size: Typography.Size, weight: Typography.Weight, color: Color) {
        self.size = size
        self.weight = weight
        self.color = color
    }
    
    func body(content: Content) -> some View {
       let typography = Typography(size: size, weight: weight)
       
       content
           .font(.custom(typography.fontName, size: typography.fontSize))
           .foregroundColor(color)
           .lineSpacing((typography.lineHeight - typography.fontSize) / 2)
           .padding(.vertical, (typography.lineHeight - typography.fontSize) / 4)
           .kerning(typography.letterSpacing)
           .fixedSize(horizontal: false, vertical: true)
   }
}

extension View {
    func typo(
        size: Typography.Size,
        weight: Typography.Weight = .regular,
        color: Color = .content.default
    ) -> some View {
        self.modifier(TypographyModifier(size: size, weight: weight, color: color))
    }
}
