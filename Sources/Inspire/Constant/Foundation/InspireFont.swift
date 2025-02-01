//
//  InspireFont.swift
//  Inspire
//
//  Created by  jwkwon0817 on 2/1/25.
//

import Foundation
import CoreText

struct InspireFontName {
    static let name = "INSPIRE_Font_Kit"
    static let weightList = ["Black", "Bold", "Extrabold", "Extralight", "Light", "Medium", "Regular", "Semibold", "Thin"]
    
    static var all: [String] {
        weightList.map { weight in
            "\(name)-\(weight)"
        }
    }
}

public struct InspireFont {
    public static func registerCustomFonts() {
        InspireFontName.all.forEach { fontName in
            guard let url = Bundle.module.url(forResource: fontName, withExtension: "otf") else {
                print("Failed to find font: \(fontName)")
                return
            }
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
    }
}
