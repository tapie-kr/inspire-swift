//
//  ColorVars.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//

import SwiftUI

extension Color {
    
    public static let transparent = Color("Solid/Blue", bundle: .module)
    
    public struct grayscale {
        public struct solid {
            public static let _5 = Color("Grayscale/Solid/5", bundle: .module)
            public static let _10 = Color("Grayscale/Solid/10", bundle: .module)
            public static let _15 = Color("Grayscale/Solid/15", bundle: .module)
            public static let _20 = Color("Grayscale/Solid/20", bundle: .module)
            public static let _30 = Color("Grayscale/Solid/30", bundle: .module)
            public static let _40 = Color("Grayscale/Solid/40", bundle: .module)
            public static let _50 = Color("Grayscale/Solid/50", bundle: .module)
            public static let _60 = Color("Grayscale/Solid/60", bundle: .module)
            public static let _70 = Color("Grayscale/Solid/70", bundle: .module)
            public static let _80 = Color("Grayscale/Solid/80", bundle: .module)
            public static let _85 = Color("Grayscale/Solid/85", bundle: .module)
            public static let _90 = Color("Grayscale/Solid/90", bundle: .module)
            public static let _95 = Color("Grayscale/Solid/95", bundle: .module)
        }
        
        public struct translucent {
            public static let _5 = Color(light: Color.solid.translucent.black._5, dark: Color.solid.translucent.white._5)
            public static let _10 = Color(light: Color.solid.translucent.black._10, dark: Color.solid.translucent.white._10)
            public static let _15 = Color(light: Color.solid.translucent.black._15, dark: Color.solid.translucent.white._15)
            public static let _20 = Color(light: Color.solid.translucent.black._20, dark: Color.solid.translucent.white._20)
            public static let _30 = Color(light: Color.solid.translucent.black._30, dark: Color.solid.translucent.white._30)
            public static let _40 = Color(light: Color.solid.translucent.black._40, dark: Color.solid.translucent.white._40)
            public static let _50 = Color(light: Color.solid.translucent.black._50, dark: Color.solid.translucent.white._50)
            public static let _60 = Color(light: Color.solid.translucent.black._60, dark: Color.solid.translucent.white._60)
            public static let _70 = Color(light: Color.solid.translucent.black._70, dark: Color.solid.translucent.white._70)
            public static let _80 = Color(light: Color.solid.translucent.black._80, dark: Color.solid.translucent.white._80)
            public static let _85 = Color(light: Color.solid.translucent.black._85, dark: Color.solid.translucent.white._85)
            public static let _90 = Color(light: Color.solid.translucent.black._90, dark: Color.solid.translucent.white._90)
            public static let _95 = Color(light: Color.solid.translucent.black._95, dark: Color.solid.translucent.white._95)
        }
    }
    
    public struct solid {
        public static let white = Color("Solid/White", bundle: .module)
        public static let black = Color("Solid/Black", bundle: .module)
        public static let red = Color("Solid/Red", bundle: .module)
        public static let green = Color("Solid/Green", bundle: .module)
        public static let blue = Color("Solid/Blue", bundle: .module)
        public static let yellow = Color("Solid/Yellow", bundle: .module)
        
        public struct translucent {
            public struct white {
                public static let _5 = Color("Solid/Translucent/White/5", bundle: .module)
                public static let _10 = Color("Solid/Translucent/White/10", bundle: .module)
                public static let _15 = Color("Solid/Translucent/White/15", bundle: .module)
                public static let _20 = Color("Solid/Translucent/White/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/White/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/White/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/White/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/White/60", bundle: .module)
                public static let _70 = Color("Solid/Translucent/White/70", bundle: .module)
                public static let _80 = Color("Solid/Translucent/White/80", bundle: .module)
                public static let _85 = Color("Solid/Translucent/White/85", bundle: .module)
                public static let _90 = Color("Solid/Translucent/White/90", bundle: .module)
                public static let _95 = Color("Solid/Translucent/White/95", bundle: .module)
            }
            
            public struct black {
                public static let _5 = Color("Solid/Translucent/Black/5", bundle: .module)
                public static let _10 = Color("Solid/Translucent/Black/10", bundle: .module)
                public static let _15 = Color("Solid/Translucent/Black/15", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Black/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Black/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Black/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Black/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Black/60", bundle: .module)
                public static let _70 = Color("Solid/Translucent/Black/70", bundle: .module)
                public static let _80 = Color("Solid/Translucent/Black/80", bundle: .module)
                public static let _85 = Color("Solid/Translucent/Black/85", bundle: .module)
                public static let _90 = Color("Solid/Translucent/Black/90", bundle: .module)
                public static let _95 = Color("Solid/Translucent/Black/95", bundle: .module)
            }
            
            public struct red {
                public static let _10 = Color("Solid/Translucent/Red/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Red/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Red/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Red/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Red/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Red/60", bundle: .module)
            }
            
            public struct green {
                public static let _10 = Color("Solid/Translucent/Green/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Green/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Green/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Green/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Green/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Green/60", bundle: .module)
            }
            
            public struct blue {
                public static let _10 = Color("Solid/Translucent/Blue/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Blue/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Blue/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Blue/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Blue/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Blue/60", bundle: .module)
            }
            
            public struct yellow {
                public static let _10 = Color("Solid/Translucent/Yellow/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Yellow/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Yellow/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Yellow/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Yellow/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Yellow/60", bundle: .module)
            }
        }
    }
    
    public struct brand {
        public struct solid {
            public static let everyday = Color.solid.blue
            public static let family = Color.solid.red
            public static let world = Color.solid.green
        }
        
        public struct monochrome {
            public static let everyday = Color("Brand/Monochrome/Everyday", bundle: .module)
            public static let family = Color("Brand/Monochrome/Family", bundle: .module)
            public static let world = Color("Brand/Monochrome/World", bundle: .module)
        }
    }
    
    public struct surface {
        public static let `default` = Color.grayscale.solid._5
        public static let elevated = Color.grayscale.solid._10
        public static let raised = Color.grayscale.solid._15
        public static let clear = Color(light: .solid.white, dark: .solid.black)
        
        public struct Inverted {
            public static let `default` = Color.grayscale.solid._95
            public static let elevated = Color.grayscale.solid._90
            public static let raised = Color.grayscale.solid._85
            public static let clear = Color(light: .solid.black, dark: .solid.black)
        }
    }
    
    public struct content {
        public static let emphasized = Color.grayscale.translucent._90
        public static let `default` = Color.grayscale.translucent._50
        public static let muted = Color.grayscale.translucent._40
        public static let disabled = Color.grayscale.translucent._20
        
        public struct inverted {
            public static let emphasized = Color(light: .solid.translucent.white._90, dark: .solid.translucent.black._90)
            public static let `default` = Color(light: .solid.translucent.white._60, dark: .solid.translucent.black._60)
            public static let muted = Color(light: .solid.translucent.white._40, dark: .solid.translucent.black._40)
            public static let disabled = Color(light: .solid.translucent.white._20, dark: .solid.translucent.black._20)
        }
    }
    
    public struct line {
        public static let border = Color.grayscale.translucent._10
        public static let divider = Color(light: .grayscale.solid._40, dark: .grayscale.solid._50)
    }
    
    public struct interaction {
        public static let hovered = Color.grayscale.translucent._5
        public static let pressed = Color.grayscale.translucent._10
        public static let focused = Color.grayscale.translucent._5
        public static let disabled = Color.transparent
        
        public struct inverted {
            public static let hovered = Color(light: .solid.translucent.white._10, dark: .solid.translucent.black._10)
            public static let pressed = Color(light: .solid.translucent.white._15, dark: .solid.translucent.black._15)
            public static let focused = Color(light: .solid.translucent.white._5, dark: .solid.translucent.black._5)
            public static let disabled = Color(light: .solid.translucent.white._50, dark: .solid.translucent.black._50)
        }
    }
}
