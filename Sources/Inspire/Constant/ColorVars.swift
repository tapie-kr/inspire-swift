//
//  Color.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//

import SwiftUI

public struct ColorVars {
    public init() {}
    
    public static let Transparent = Color("Solid/Blue", bundle: .module)
    
    public struct Grayscale {
        public struct Solid {
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
        
        public struct Translucent {
            public static let _5 = Color(light: ColorVars.Solid.Translucent.Black._5, dark: ColorVars.Solid.Translucent.White._5)
            public static let _10 = Color(light: ColorVars.Solid.Translucent.Black._10, dark: ColorVars.Solid.Translucent.White._10)
            public static let _15 = Color(light: ColorVars.Solid.Translucent.Black._15, dark: ColorVars.Solid.Translucent.White._15)
            public static let _20 = Color(light: ColorVars.Solid.Translucent.Black._20, dark: ColorVars.Solid.Translucent.White._20)
            public static let _30 = Color(light: ColorVars.Solid.Translucent.Black._30, dark: ColorVars.Solid.Translucent.White._30)
            public static let _40 = Color(light: ColorVars.Solid.Translucent.Black._40, dark: ColorVars.Solid.Translucent.White._40)
            public static let _50 = Color(light: ColorVars.Solid.Translucent.Black._50, dark: ColorVars.Solid.Translucent.White._50)
            public static let _60 = Color(light: ColorVars.Solid.Translucent.Black._60, dark: ColorVars.Solid.Translucent.White._60)
            public static let _70 = Color(light: ColorVars.Solid.Translucent.Black._70, dark: ColorVars.Solid.Translucent.White._70)
            public static let _80 = Color(light: ColorVars.Solid.Translucent.Black._80, dark: ColorVars.Solid.Translucent.White._80)
            public static let _85 = Color(light: ColorVars.Solid.Translucent.Black._85, dark: ColorVars.Solid.Translucent.White._85)
            public static let _90 = Color(light: ColorVars.Solid.Translucent.Black._90, dark: ColorVars.Solid.Translucent.White._90)
            public static let _95 = Color(light: ColorVars.Solid.Translucent.Black._95, dark: ColorVars.Solid.Translucent.White._95)
        }
    }
    
    public struct Solid {
        public static let White = Color("Solid/White", bundle: .module)
        public static let Black = Color("Solid/Black", bundle: .module)
        public static let Red = Color("Solid/Red", bundle: .module)
        public static let Green = Color("Solid/Green", bundle: .module)
        public static let Blue = Color("Solid/Blue", bundle: .module)
        public static let Yellow = Color("Solid/Yellow", bundle: .module)
        
        public struct Translucent {
            public struct White {
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
            
            public struct Black {
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
            
            public struct Red {
                public static let _10 = Color("Solid/Translucent/Red/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Red/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Red/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Red/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Red/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Red/60", bundle: .module)
            }
            
            public struct Green {
                public static let _10 = Color("Solid/Translucent/Green/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Green/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Green/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Green/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Green/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Green/60", bundle: .module)
            }
            
            public struct Blue {
                public static let _10 = Color("Solid/Translucent/Blue/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Blue/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Blue/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Blue/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Blue/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Blue/60", bundle: .module)
            }
            
            public struct Yellow {
                public static let _10 = Color("Solid/Translucent/Yellow/10", bundle: .module)
                public static let _20 = Color("Solid/Translucent/Yellow/20", bundle: .module)
                public static let _30 = Color("Solid/Translucent/Yellow/30", bundle: .module)
                public static let _40 = Color("Solid/Translucent/Yellow/40", bundle: .module)
                public static let _50 = Color("Solid/Translucent/Yellow/50", bundle: .module)
                public static let _60 = Color("Solid/Translucent/Yellow/60", bundle: .module)
            }
        }
    }
    
    public struct Brand {
        public struct Solid {
            public static let Everyday = ColorVars.Solid.Blue
            public static let Family = ColorVars.Solid.Red
            public static let World = ColorVars.Solid.Green
        }
        
        public struct Monochrome {
            public static let Everyday = Color("Brand/Monochrome/Everyday", bundle: .module)
            public static let Family = Color("Brand/Monochrome/Family", bundle: .module)
            public static let World = Color("Brand/Monochrome/World", bundle: .module)
        }
    }
    
    public struct Surface {
        public static let Default = ColorVars.Grayscale.Solid._5
        public static let Elevated = ColorVars.Grayscale.Solid._10
        public static let Raised = ColorVars.Grayscale.Solid._15
        public static let Clear = Color(light: ColorVars.Solid.White, dark: ColorVars.Solid.Black)
        
        public struct Inverted {
            public static let Default = ColorVars.Grayscale.Solid._95
            public static let Elevated = ColorVars.Grayscale.Solid._90
            public static let Raised = ColorVars.Grayscale.Solid._85
            public static let Clear = Color(light: ColorVars.Solid.Black, dark: ColorVars.Solid.White)
        }
    }
    
    public struct Content {
        public static let Emphasized = ColorVars.Grayscale.Translucent._90
        public static let Default = ColorVars.Grayscale.Translucent._50
        public static let Muted = ColorVars.Grayscale.Translucent._40
        public static let Disabled = ColorVars.Grayscale.Translucent._20
        
        public struct Inverted {
            public static let Emphasized = Color(light: ColorVars.Solid.Translucent.White._90, dark: ColorVars.Solid.Translucent.Black._90)
            public static let Default = Color(light: ColorVars.Solid.Translucent.White._60, dark: ColorVars.Solid.Translucent.Black._60)
            public static let Muted = Color(light: ColorVars.Solid.Translucent.White._40, dark: ColorVars.Solid.Translucent.Black._40)
            public static let Disabled = Color(light: ColorVars.Solid.Translucent.White._20, dark: ColorVars.Solid.Translucent.Black._20)
        }
    }
    
    public struct Line {
        public static let Border = ColorVars.Grayscale.Translucent._10
        public static let Divider = Color(light: ColorVars.Grayscale.Solid._40, dark: ColorVars.Grayscale.Solid._50)
    }
    
    public struct Interaction {
        public static let Hovered = ColorVars.Grayscale.Translucent._5
        public static let Pressed = ColorVars.Grayscale.Translucent._10
        public static let Focused = ColorVars.Grayscale.Translucent._5
        public static let Disabled = ColorVars.Transparent
        
        public struct Inverted {
            public static let Hovered = Color(light: ColorVars.Solid.Translucent.White._10, dark: ColorVars.Solid.Translucent.Black._10)
            public static let Pressed = Color(light: ColorVars.Solid.Translucent.White._15, dark: ColorVars.Solid.Translucent.Black._15)
            public static let Focused = Color(light: ColorVars.Solid.Translucent.White._5, dark: ColorVars.Solid.Translucent.Black._5)
            public static let Disabled = Color(light: ColorVars.Solid.Translucent.White._50, dark: ColorVars.Solid.Translucent.Black._50)
        }
    }
}
